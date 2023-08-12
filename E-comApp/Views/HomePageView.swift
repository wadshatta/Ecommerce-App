//
//  HomePageView.swift
//  E-comApp
//
//  Created by MacBook Pro on 08/08/2023.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                AppBar()
                      
                SearchView()
                ImageSlideView()
                    
                    HStack{
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundColor(Color("A1"))
                    }
                    .padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:10){
                            ForEach(productList,id:\.id){product in
                                NavigationLink{
                                    ProductDetialsView(product: product)
                                }label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                

            }
        }
        .environmentObject(cartManager)
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
            
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading ) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width:20,height: 20)
                        .padding(.trailing)
                    Text("Perm,Russia")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink(destination: CardView()
                        .environmentObject(cartManager)) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                
                Text("Find The Most \nLuxurios ")
                    .font(.title2)
                
                + Text("Clothes")
                    .font(.title2 .bold())
                    .foregroundColor(Color("A1"))
            }
        }
        
        .environmentObject(CartManager())
    }
}
