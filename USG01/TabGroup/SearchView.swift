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
                            .foregroundColor(.primary)
                            
                        
                            .onTapGesture {
                                self.isEditing = true
                            }
                        
                        if isEditing {
                            Button(action: {
                                self.isEditing = false
                                self.searchText = ""
                                
                            }) {
                                Text("취소")
                            }
                            
                            .transition(.move(edge: .trailing))
                            .animation(.default)
                        }
                        
                    }
                    .padding()
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
