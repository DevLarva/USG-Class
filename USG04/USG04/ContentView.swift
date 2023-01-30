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
                            AsyncImage(url: URL(string: "http://mynf.codershigh.com:8080"+item.image)) {
                                image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            Text(item.title)
                        }
                    }
                }
                Button {
                    fetchMovieList()
                } label: {
                    Text("추가 하라")
                }
            }
            .navigationTitle("영화 리스트")
            .toolbar {
                ToolbarItemGroup(placement: .automatic) {
            
                }
            }
            
        }
    }
}

func fetchMovieList() {
    print("fetchMovieList")
    // 1. URL
    let urlStr = "http://mynf.codershigh.com:8080/api/movies"
    let url = URL(string: urlStr)!
    
    // 2. Request
    let request = URLRequest(url: url)
    
    // 3. Session, Task
    URLSession.shared.dataTask(with: request) { data, response, error in
        do {
            let ret = try JSONDecoder().decode(MovieResponse.self, from: data!)
            for item in ret.data {
                print(item.title)
                print(item.image)
            }
        }
        catch {
            print("Error", error)
        }
    }.resume()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
