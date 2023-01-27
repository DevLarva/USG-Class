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
            
                NavigationLink(
                    destination: MyWebview(urlToLoad: "https://developer.apple.com/kr/news/?id=v8a3aetj")){
                        
                        //버튼 자체에 대한 코드
                        Text("HIG")
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
