//
//  DiscoverView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/27.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing:10) {
                Image("Discover")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .padding(.vertical)
                Text("Discover Apple Design Resources")
                    .padding()
                    .bold()
                    .font(.title2)
                Text("Find templates, icons, product bezels, and other materials to help you design apps for Apple platforms.")
                    .padding()
                
                Divider()
                
                HStack(alignment: .center,spacing: 0) {
                    
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://developer.apple.com/design/resources/")){
                            
                            //버튼 자체에 대한 코드
                            Image(systemName: "arrow.down.circle")
                            Text("Discover Apple Design Resources")
                                
                        }
                            
                            
                    }
                
                .padding()
                Divider()
                    
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
