//
//  ProductDetialsView.swift
//  E-comApp
//
//  Created by MacBook Pro on 09/08/2023.
//

import SwiftUI

struct ProductDetialsView: View {
    var product : Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                VStack(alignment: .leading){
                    ZStack(alignment:.topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges:.top)
                            .frame(height: 250)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .padding(.top,63)
                            .padding(.trailing,20)
                            
                    }
                    VStack(alignment:.leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            Spacer()
                            Text("$\(product.price)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("B1"))
                        }
                        .padding(.vertical)
                        HStack(spacing: 10 ){
                            ForEach(0..<5){index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.yellow)
                            }
                           Text("(4.5)")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack{
                                Button(action:{} ,label:{
                                    Image(systemName: "minus.square")
                                   
                                    
                                })
                                Text("1")
                                
                                Button(action:{} ,label:{
                                    Image(systemName: "plus.square")
                                        
                                                                        
                                })
                        }.padding(.vertical)
                        
                       
                        }
                       Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text(product.description)
                        Spacer()
                        HStack(alignment: .top){
                            VStack(alignment:.leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                Text("Height: \(product.height)")
                                    .foregroundColor(.gray)
                                Text("Width: \(product.width)")
                                    .foregroundColor(.gray)
                                Text("Width: \(product.dimeter)")
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth:.infinity,alignment: .leading)
                            Spacer()
                            VStack(alignment: .leading){
                                Text("Colors")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                HStack{
                                    ColorDotView(color: .blue)
                                    ColorDotView(color: .black)
                                    ColorDotView(color: .green)
                                }
                                
                                
                            }
                            .frame(maxWidth:.infinity,alignment: .leading)
                            
                        }
                        .padding(.vertical)
                        PaymentButton(action: {})
                            .frame(width:.infinity,height: 35)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(30)
                    .offset(y:-30)
                }
             
            }
        }
        .ignoresSafeArea(edges:.top)
            
    }
}

struct ProductDetialsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetialsView(product: productList[3])
    }
}


struct ColorDotView: View{
    let color:Color
    var body: some View{
        color
            .frame(width:25,height: 25)
            .clipShape(Circle())
    }
}
