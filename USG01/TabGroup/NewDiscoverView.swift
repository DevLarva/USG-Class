//
//  NewDiscoverView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/20.
//

import SwiftUI

struct NewDiscoverView: View {
    @State var tag:Int? = nil
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(spacing: 15) {
                    
                    Image("new main")
                        .resizable()
                        .frame(width: 400, height: 300)
                        .padding()
                    
                    NavigationLink(destination: HigDetailView(), tag: 1, selection: self.$tag ){
                    }
                    Button(action: {
                        self.tag = 1
                    }) {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .foregroundColor(.systemGray4)
                            .overlay(VStack(alignment: .leading  , spacing: 10) {
                                Text("Explore the Human Interface Guidelines")
                                    .font(.callout)
                                    .bold().foregroundColor(.black)
                                Text("Learn best practices that can help you design a great experience for any Apple platform")
                                    .foregroundColor(.secondary)
                                
                            })
                            .frame(width: 350, height: 110)
                        
                    }
                    NavigationLink(destination: DiscoverView(), tag: 2, selection: self.$tag ){
                    }
                    Button(action: {
                        self.tag = 2
                    }) {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .foregroundColor(.systemGray4)
                            .overlay(VStack(alignment: .leading  , spacing: 15) {
                                Text("Discover Apple Design Resources")
                                    .font(.callout)
                                    .bold().foregroundColor(.black)
                                Text("Find templates, icons, product bezels, and other materials to help you design apps for Apple platforms.")
                                    .foregroundColor(.secondary)
                                
                            })
                            .frame(width: 350, height: 110)
                        
                    }
                    
                    
                }
                .navigationTitle("새로운 발견")
            }
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
