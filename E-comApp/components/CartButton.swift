//
//  CartButton.swift
//  E-comApp
//
//  Created by MacBook Pro on 08/08/2023.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {

        ZStack(alignment:.topTrailing){
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption)
                    .foregroundColor(.white)
                    .frame(width:15,height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
