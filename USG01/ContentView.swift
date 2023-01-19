//
//  ContentView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var showActionSheet = false //상태
    @State var name: String = ""
    @State private var names = ["리이오", "영", "링고", "테드"]
    var body: some View {
        
        NavigationStack {
            Form {
                List{
                    Section {
                        VStack {
                            Button("로그인") {
                                showActionSheet = true
                            }.confirmationDialog("로그인", isPresented: $showActionSheet ) {
                                Button("bdh3620@naver.com") {
                                    
                                    
                                }
                                Button("Apple ID로 로그인") {
                                    
                                }
                                
                            } message: {
                                Text("기존 iCloud 계정을 사용하여 로그인거나 다른 Apple ID를 사용하십시오.")
                            }
                        }
                        
                        
                    }footer: {
                        Text("Apple Developer 계정 등을 관리하려면 Apple ID로 로그인 하십시오.")
                    }
                }
                Section{
                    NavigationLink("알림") {
                        AlertView()
                    }
                }footer: {
                    Text("계정, 공지, WWDC 등에 대한 업데이트 수신 방법을 사용자화하십시오.")
                }
                Section {
                    List {
                        ForEach(names, id: \.self) {
                            name in
                            NavigationLink(destination: Text("\(Text(name))")) { Text(name)
                            }
                        }
                    }
                }

            
                
                Section {
                    Button("Modal") {
                        
                    }
                }
                
            }
            ZStack {
                VStack {
                    TextField("이름", text: $name, onCommit: {
                        
                    })
                    Button("추가") {
                        names.append(name)
                        name = ""
                        
                    }
                }
                .padding()
               
            }
           
            
        }
        .navigationBarTitle("계정")
        .navigationBarTitleDisplayMode(.inline)
     
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
