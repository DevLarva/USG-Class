//
//  NewDiscoverView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/20.
//

import SwiftUI

struct NewDiscoverView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Image("new main")
                    .resizable()
                    .frame(width: 400, height: 300)
                    .padding()
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .foregroundColor(.systemGray4)
                    .overlay(VStack(alignment: .listRowSeparatorLeading  , spacing: 15) {
                        Text("Explore the Human Interface Guidelines")
                            .font(.callout)
                            .bold()
                        Text("Learn best practices that can help you design a great experience for any Apple platform")
                            
                    })
                    .frame(width: 350, height: 100)
                    .padding()
                
            }
            .navigationTitle("새로운 발견")
        }
    }
}
extension Color {
    static let systemGray4 = Color("systemGray4")
}
struct NewDiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NewDiscoverView()
    }
}
