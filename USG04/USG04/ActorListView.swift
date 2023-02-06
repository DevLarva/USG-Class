//
//  ActorListView.swift
//  USG04
//
//  Created by 백대홍 on 2023/02/07.
//

import SwiftUI
struct ActorResponse: Codable {
    let data: [Actor]
}
struct Actor: Codable, Hashable {
    let _id: String
    let name: String
    let image: String
}
struct ActorListView: View {
    @State private var Actors:[Actor] = []
    var body: some View {
        VStack(alignment: .leading) {
            NavigationStack {
                ScrollView(.horizontal){
                    HStack(alignment: .center) {
                        ForEach(Actors, id: \.self) { item in
                            AsyncImage(url: URL(string:"http://mynf.codershigh.com:8080"+item.image)) { image in
                                image.resizable()
                                    .frame(width: 150, height:200)
                            } placeholder: {
                                ProgressView()
                            }
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                
                .navigationTitle("Actors")
                .toolbar {
                    ToolbarItemGroup(placement: .automatic) {
                        Button {
                            fetchActorList()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
            }
        }
    }
    
    
    func fetchActorList() {
        print("fetchMovieList")
        // 1. URL
        let actorUrlStr = "http://mynf.codershigh.com:8080/api/actors"
        let actorUrl = URL(string: actorUrlStr)!
        
        // 2. Request
        let actorRequest = URLRequest(url: actorUrl)
        
        // 3. Session, Task
        URLSession.shared.dataTask(with: actorRequest) { data, response, error in
            do {
                let ret = try JSONDecoder().decode(ActorResponse.self, from: data!)
                for item in ret.data {
                    self.Actors.append(item)
                }
            } catch {
                print("Error", error)
            }
        }.resume()
    }
}
        struct ActorListView_Previews: PreviewProvider {
            static var previews: some View {
                ActorListView()
            }
        }