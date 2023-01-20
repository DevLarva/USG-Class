//
//  TabView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/20.
//

import SwiftUI

struct ItemTabView: View {
    var body: some View {
        TabView {
            NewDiscoverView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("새로운 발견")
                }
            AroundView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("둘러보기")
                }
            WWDCView()
                .tabItem {
                    Image(systemName: "apple.logo")
                    Text("WWDC")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("계정")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
        }
    }
}
struct ItemTabView_Previews: PreviewProvider {
    static var previews: some View {
        ItemTabView()
    }
}
