//
//  SearchView.swift
//  E-comApp
//
//  Created by MacBook Pro on 08/08/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass.circle")
                    .padding()
                TextField("search for clothes",text: $search)
            }
            .background(Color("B1"))
            .cornerRadius(12)
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("A1"))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
