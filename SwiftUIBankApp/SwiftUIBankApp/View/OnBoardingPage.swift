//
//  OnBoardingPage.swift
//  SwiftUIBankApp
//
//  Created by Sergiy Brotsky on 25.01.2022.
//

import SwiftUI

struct OnBoardingPage: View {
    @State var showLoginPage: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Find your\nGadget")
                .font(.system(size: 55))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Button{
                    showLoginPage = true
            } label: {
                Text("Get started")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .foregroundColor(.purple)
            }
            .padding(.horizontal, 30)
            .offset(y: 20)
            
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple)
        .overlay(
            Group{
                if showLoginPage{
                    LoginPage()
                        .transition(.move(edge: .bottom))
                }
            }
            )
    }
}

struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
    }
}


extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
