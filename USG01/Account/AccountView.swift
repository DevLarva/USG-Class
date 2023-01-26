//
//  AccountView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/26.
//

import SwiftUI

struct AccountView: View {
    @State var NewsToggle = false
    @State var FeatureToggle = false
    @State var WWDCToggle = false
    @State var isTechTalksOn = false
    @State var isPresentatedDialog = false
    @State private var names = ["리이오", "링고", "영", "테드"]
    @State var name: String = ""
    @State var selectedName: String = ""
    @State var showModal: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        Button("로그인") {
                            print("로그인")
                            isPresentatedDialog = true
                        }
                        .confirmationDialog(
                            "로그인",
                            isPresented: $isPresentatedDialog
                        ) {
                            Button ("bdh3620@naver.com") {}
                            Button("Apple ID로 로그인") {}
                        } message: {
                            Text("기존 iCloud 계정을 ~~~")
                        }
                        
                        
                    } footer: {
                        Text("Apple Developer 계정 등을 관리하려면 Apple ID로 로그인 하십시오.")
                    }
                    
                    Section {
                        NavigationLink {
                            List {
                                Section {
                                    Toggle(isOn: $NewsToggle) {
                                        Text("News Highlights")
                                    }
                                    Toggle(isOn: $FeatureToggle) {
                                        Text("Feature Stories")
                                    }
                                    Toggle(isOn: $WWDCToggle) {
                                        Text("WWDC")
                                    }
                                    Toggle(isOn: $isTechTalksOn) {
                                        Text("Tech talks")
                                    }
                                } footer: {
                                    Text("Apple ID로 Apple Developer 앱에 로그인하고 ....")
                                }
                            }
                            .navigationTitle("알림")
                            .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            Text("알림")
                        }
                    } footer: {
                        Text("계정, 공지, WWDC 등에 대한 업데이트 수신 방법을 사용자화하십시오.")
                    }
                    
                    Section {
                        ForEach(names, id: \.self) { item in
                            NavigationLink {
                                DetailView(selectedName: item)
                            } label: {
                                Text(item)
                            }
                        }
                    }
                    
                    Section {
                        Button {
                            showModal.toggle()
                        } label: {
                            Text("Modal")
                        }
                   
                    }
                    Section {
                        TextField("이름", text: $name)
                            .padding()
                            .textFieldStyle(.automatic)
                            .onAppear {
                                UITextField.appearance().clearButtonMode = .whileEditing
                            }
                        
                        Button("추가") {
                            names.append(name)
                        }
                    }
                }
                .navigationTitle("계정")
                
                   
                
            }
            .sheet(isPresented: $showModal) {
                LoginModalView(isClosed: $showModal)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
