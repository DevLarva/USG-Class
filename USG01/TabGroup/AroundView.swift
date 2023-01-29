//
//  AroundView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/20.
//

import SwiftUI

struct AroundView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Image(systemName: "newspaper")
                        Text("뉴스")
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "bookmark")
                        Text("책갈피")
                    }
                    Divider()
                    
                    HStack {
                        Image(systemName: "arrow.down.circle")
                        Text("다운로드됨")
                        
                    }
                    Spacer(minLength: 10)
                    
                    HStack {
                        Text("이어서 보기").bold()
                            .font(.title2)
                    }
                    
                    HStack {
                        Text("주제")
                            .bold()
                            .font(.title2)
                    }
                }
                
                .padding()
                
                
                
            }
            .navigationTitle("둘러보기")
        }
    }
}

struct AroundView_Previews: PreviewProvider {
    static var previews: some View {
        AroundView()
    }
}
