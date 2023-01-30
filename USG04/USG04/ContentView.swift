//
//  ContentView.swift
//  USG04
//
//  Created by 백대홍 on 2023/01/30.
//

import SwiftUI

struct Movie: Codable, Hashable {
    let title: String
    let image: String
}

struct MovieResponse: Codable {
    let data: [Movie]
}

struct ContentView: View {
    @State var movies : [Movie] = []
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    ForEach(movies, id:\.self) { item in
                        HStack {
                            Image(systemName: item.image)
                            Text(item.title)
                        }
                    }
                }
                .navigationTitle("영화 리스트")
                .toolbar {
                    ToolbarItemGroup(placement: .automatic) {
                        Button {
                            movies = [Movie(title: "번개도둑", image: "bolt"),
                                      Movie(title: "아바타2", image: "lock"),
                                      Movie(title: "더 글로리", image: "bolt")]
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
