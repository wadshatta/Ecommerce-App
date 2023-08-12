//
//  ContentView.swift
//  E-comApp
//
//  Created by MacBook Pro on 08/08/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State var currentTab : Tab = .Home
    init(){
        UITabBar.appearance().isHidden = true
    }
    @Namespace var animation
    var body: some View {
        TabView(selection: $currentTab){
            HomePageView()
                .padding(.bottom,15)
            Text("Search View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background()
                .tag(Tab.Search)

            Text("Notifications View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background()
                .tag(Tab.Notifications)

            Text("cart View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background()
                .tag(Tab.cart)

            Text("Profile View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background()
                .tag(Tab.Profile)

        }
        
        .overlay(
            HStack(spacing:0){
                ForEach(Tab.allCases, id: \.rawValue){tab in
                    TabButton(tab:tab)
                }
                .padding(.vertical)
                .padding(.bottom,getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                .background(Color("B1"))
                
            }
            ,
            alignment:.bottom
                
        )
        .ignoresSafeArea(.all,edges:.bottom)
        
        
    }
    
    func TabButton(tab:Tab) -> some View{
        GeometryReader{proxy in
            Button(action:{
                withAnimation(.spring()){
                    currentTab = tab
                }
            },
                   label: {
                VStack(spacing:0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill" : tab.rawValue)
                        .resizable()
                        .foregroundColor(Color("A1"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                        .frame(maxWidth:.infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                         .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    Text(tab.Tabname)
                                        .foregroundColor(.primary)
                                        .font(.footnote)
                                        .padding(.top,50)
                                    
                                    
                                    
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            })
        }
        .frame(height:20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
    }
}

enum Tab: String , CaseIterable{
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notifications = "bell"
    case cart = "bag"
    case Profile = "person"
    
    var Tabname: String{
        switch self{
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notifications:
            return "Notifications"
        case .cart:
            return "cart"
        case .Profile:
            return "Profile"
        
        }
    }
}

extension View{
    func getSafeArea() -> UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as?
                UIWindowScene else{
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable{
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        let view = UIVisualEffectView(effect:UIBlurEffect(style: style))
        return view
        
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
