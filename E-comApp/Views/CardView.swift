//
//  CardView.swift
//  E-comApp
//
//  Created by MacBook Pro on 09/08/2023.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){product in
                    CartProductView(product: product)
                }
                HStack{
                    Text("Your Total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                    
                    
                }
                .padding()
                PaymentButton(action: {})
            }else{
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(CartManager())
    }
}
