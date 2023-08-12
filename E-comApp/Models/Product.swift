//
//  Product.swift
//  E-comApp
//
//  Created by MacBook Pro on 08/08/2023.
//

import Foundation


struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description : String
    var supplier : String
    var price : Int
    var height : String
    var width: String
    var dimeter : String
    
}

var productList = [
Product(name: "Sports jersey",
        image: "m-short-2",
        description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
        supplier: "Lacoste",
        price: 200,
        height:"135 cm",
        width:"130 cm", dimeter: "105 cm"
       ),
Product(name: "Dress shirt",
        image: "m-shirt-1",
        description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
        supplier: "IKEA",
        price: 200, height:"135 cm",
        width:"130 cm", dimeter: "105 cm")
,
Product(name: "Sports jersey",
        image: "m-short",
        description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
        supplier: "Adidas",
        price: 200,
        height:"135 cm",
        width:"130 cm", dimeter: "105 cm"
       ),
Product(name: "Dress shirt",
        image: "tshirt",
        description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
        supplier: "IKEA",
        price: 200,
        height:"135 cm",
        width:"130 cm", dimeter: "105 cm"
       ),
Product(name: "Sports jersey",
        image: "w-short-1",
        description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
        supplier: "Puma",
        price: 200,
        height:"135 cm",
        width:"130 cm", dimeter: "105 cm"
       )
,Product(name: "Dress shirt",
         image: "w-short",
         description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "IKEA",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Dress shirt",
         image: "1",
         description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Puma",
         price: 200,

         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Sports jersey",
         image: "2",
         description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Hugo Boss",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Dress shirt",
         image: "3",
         description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Lacoste",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Dress shirt",
         image: "4",
         description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Adidas",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Sports jersey",
         image: "5",
         description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s ",
         supplier: "Levi's",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Dress shirt",
         image: "6",
         description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Allen Solly",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "7",
         image: "1",
         description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Tommy Hilfiger",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
,Product(name: "Dress shirt",
         image: "2",
         description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
         supplier: "Nike",
         price: 200,
         height:"135 cm",
         width:"130 cm", dimeter: "105 cm"
        )
]
