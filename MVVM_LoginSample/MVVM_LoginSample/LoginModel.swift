//
//  LoginModel.swift
//  MVVM_LoginSample
//
//  Created by Mantosh Kumar on 02/10/24.
//

import Foundation

struct Login {
    var login: String
    var password: String
    
    init(login: String, password: String) {
        self.login = login
        self.password = password
    }
}
