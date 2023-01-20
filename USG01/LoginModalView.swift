//
//  LoginModalView.swift
//  USG01
//
//  Created by 백대홍 on 2023/01/16.
//

import SwiftUI


struct LoginModalView: View {
    @Binding var isClosed: Bool
    
    var body: some View {
        Button {
            isClosed.toggle()
        } label: {
            Label("닫기버튼", systemImage: "multiply.square")
        }
    }
}


struct LoginModalView_Previews: PreviewProvider {
    static var previews: some View {
        LoginModalView(isClosed: .constant(true))
    }
}
