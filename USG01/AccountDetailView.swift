//
//  AccountView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/20.
//

import SwiftUI

struct AccountDetailView: View {
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading) {
                    Text("Baek Daehong")
                    Text("bdh3620@naver.com")
                }
                
            }
            Section {
                NavigationLink {
                    Text("알림")
                } label: {
                    Text("알림")
                }
                
            }footer: {
                Text("계정, 공지, WWDC 등에 대한 업데이트 수신 방법을 사용화하십시오.")
            }
            Section {
                NavigationLink {
                    Text("계정 소유자")
                } label: {
                    VStack(alignment:.leading) {
                        Text("Daehong Baek")
                            .font(.headline)
                            .bold()
                        Text("계정 소유자")
                    }
                }
            }header: {
                 Text("팀")
            }
            Section {
                Text("로그아웃")
                    .foregroundColor(.red)
            }
            
        }
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView()
    }
}
