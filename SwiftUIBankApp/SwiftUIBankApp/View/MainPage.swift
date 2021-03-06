//
//  MainPage.swift
//  SwiftUIBankApp
//
//  Created by Sergiy Brotsky on 27.01.2022.
//

import SwiftUI

struct MainPage: View {
    @State var currentTab: Tab = .Home
    
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0){
    
            TabView(selection: $currentTab){
                Home()
                    .tag(Tab.Home)
              
                Text("Liked")
                    .tag(Tab.Liked)
                Text("Profile")
                    .tag(Tab.Profile)
                Text("Cart")
                    .tag(Tab.Cart)
            }
            
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.self){tab in
                    Button{
                        currentTab = tab
                    } label: {
                        Image(systemName: tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .background(
                                Color(.purple)
                                    .opacity(0.1)
                                    .cornerRadius(5)
                                    .blur(radius: 5)
                                    .padding(-7)
                                    .opacity(currentTab == tab ? 1: 0)
                                    
                                            )
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? .purple : .black.opacity(0.3))
                    }
                }
            }
            .padding([.horizontal, .top])
            .padding(.bottom, 10)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

enum Tab: String, CaseIterable{
    case Home = "house"
    case Liked = "heart.fill"
    case Profile = "person.fill"
    case Cart = "cart.fill"
}
