//
//  AlertView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/16.
//

import SwiftUI

struct AlertView: View {
    @State var NewsToggle = false
    @State var FeaturedToggle = false
    @State var WWDCToggle = false
    @State var TechToggle = false
    var body: some View {
        List{
            Section {
                HStack(alignment: .center) {
                    Text("News Highlights")
                    Toggle(isOn: self.$NewsToggle) {
                        
                    }
                    
                }
                Section {
                    HStack(alignment: .center) {
                        Text("Featured Stories")
                        Toggle(isOn: self.$FeaturedToggle) {
                            
                        }
                    }
                }
                Section {
                    HStack(alignment: .center) {
                        Text("WWDC")
                        Toggle(isOn: self.$WWDCToggle) {
                            
                        }
                    }
                }
                Section {
                    HStack(alignment: .center) {
                        Text("Tech Talks")
                        Toggle(isOn: self.$TechToggle) {
                            
                        }
                    }
                }
            }footer: {
                Text("Apple ID로 Apple Developer 앱에 로그인 하고 알림을 활성화한 모든 기기로 알림이 전송됩니다.")
            }
           
        }
        .navigationTitle("알림")
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
