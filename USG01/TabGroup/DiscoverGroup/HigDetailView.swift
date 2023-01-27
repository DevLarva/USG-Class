//
//  HigDetailView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/27.
//

import SwiftUI

struct HigDetailView: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing:10) {
                Image("HIG")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .padding(.vertical)
                Text("Explore the Human Interface Guidelines")
                    .padding()
                    .bold()
                    .font(.title2)
                Text("Learn best practices that can help you design a great experience for any Apple platform. Discover updated guidance on Live Activities, Charts, Always On, and more.")
                    .padding(.horizontal)
                    .bold()
                    .font(.subheadline)
                
//  MARK: - HIG 가이드 라인(HIG)
                VStack(alignment: .leading, spacing: 0) {
                    Divider()
                    HStack(alignment: .center,spacing: 0) {
                        
                        NavigationLink(
                            destination: MyWebview(urlToLoad: "https://developer.apple.com/kr/news/?id=v8a3aetj")){
                                
                                //버튼 자체에 대한 코드
                                Image(systemName: "doc.text")
                                Text("Explore the Human Interface Guidelines")
                                    
                                
                                
                        }
                    }
                    .padding()
                   
//  MARK: - HIG 가이드 라인(Live Activities)
                    Divider()
                    HStack(alignment: .center,spacing: 0) {
                        
                        NavigationLink(
                            destination: MyWebview(urlToLoad: "https://developer.apple.com/design/human-interface-guidelines/components/system-experiences/live-activities")){
                                
                                //버튼 자체에 대한 코드
                                Image(systemName: "doc.text")
                                Text("Human Interface Guidelines - Live Activities")
                                    
                            }
                                
                                
                        }
                    .padding()
//  MARK: - HIG 가이드 라인(Charts)
                    Divider()
                    HStack(alignment: .center,spacing: 0) {
                        
                        NavigationLink(
                            destination: MyWebview(urlToLoad: "https://developer.apple.com/design/human-interface-guidelines/components/content/charts")){
                                
                                //버튼 자체에 대한 코드
                                Image(systemName: "doc.text")
                                Text("Human Interface Guidelines - Charts")
                                    
                            }
                                
                                
                        }
                    .padding()
//  MARK: - HIG 가이드 라인(Always On)
                    Divider()
                    HStack(alignment: .center,spacing: 0) {
                        
                        NavigationLink(
                            destination: MyWebview(urlToLoad: "https://developer.apple.com/design/human-interface-guidelines/technologies/always-on")){
                                
                                //버튼 자체에 대한 코드
                                Image(systemName: "doc.text")
                                Text("Human Interface Guidelines - Always On")
                                    
                            }
                                
                                
                        }
                    .padding()
                }
                
                
            }
        }
        
        
    }
}

struct HigDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HigDetailView()
    }
}
