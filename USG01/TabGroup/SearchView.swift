//
//  SearchView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/20.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var isEditing = false
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("검색", text: $searchText)
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal, 10)
                        
                            .onTapGesture {
                                self.isEditing = true
                            }
                        
                        if isEditing {
                            Button(action: {
                                self.isEditing = false
                                self.searchText = ""
                                
                            }) {
                                Text("Cancel")
                            }
                            .padding(.trailing, 10)
                            .transition(.move(edge: .trailing))
                            .animation(.default)
                        }
                        
                    }
                    .navigationTitle("검색")
                }
            }
        }
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
