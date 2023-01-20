//
//  DetailView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/19.
//

import SwiftUI

struct DetailView: View {
    var selectedName: String
    var body: some View {
        Text(selectedName)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedName: "Leeo")
    }
}
