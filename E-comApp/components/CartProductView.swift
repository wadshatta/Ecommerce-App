//
//  CartProductView.swift
//  E-comApp
//
//  Created by MacBook Pro on 09/08/2023.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack(spacing:20){
            Image(product.image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 70,height: 100)
                .cornerRadius(9)
            
            VStack(alignment:.leading,spacing: 5){
                Text(product.name)
                    .bold()
                Text("$ \(product.price)")
                    .bold()
            }
            .padding()
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .background(Color("B1"))
        .cornerRadius(12)
        .frame(width:.infinity,alignment: .leading)
        .padding()
    }
}

struct CartProductView_Previews: PreviewProvider {
    static var previews: some View {
        CartProductView(product: productList[0])
            .environmentObject(CartManager())
    }
}
