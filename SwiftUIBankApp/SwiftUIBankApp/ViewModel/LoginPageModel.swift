//
//  LoginPageModel.swift
//  SwiftUIBankApp
//
//  Created by Sergiy Brotsky on 25.01.2022.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    // register
    @Published var registerUser: Bool = false
    @Published var re_Enter_Password: String = ""
    @Published var showReEnterPassword: Bool = false
    
    
    func Login(){
        
    }
    
    func Register(){
        
    }
    
    func ForgotPassword(){
        
    }
}

