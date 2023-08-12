//
//  ImageSlideView.swift
//  E-comApp
//
//  Created by MacBook Pro on 08/08/2023.
//

import SwiftUI

struct ImageSlideView: View {
    @State private var currentIndex = 0
    var slides: [String] = ["1","2","3","4","5"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity,height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("B1") : Color("A1"))
                        .frame(width:10,height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if self.currentIndex + 1 == self.slides.count{
                    self.currentIndex = 0
                }else{
                    self.currentIndex += 1
                }
            }
        }
    }
}

struct ImageSlideView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlideView()
    }
}
