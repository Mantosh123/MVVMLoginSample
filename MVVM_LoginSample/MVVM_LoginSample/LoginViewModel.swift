//
//  LoginViewModel.swift
//  MVVM_LoginSample
//
//  Created by Mantosh Kumar on 02/10/24.
//

import Foundation


protocol ViewModelDelegate {
    func login(from emailTextField: String?, passwoedTextField: String?)
}

protocol ViewControllerDelegate: AnyObject  {
    func getLoginInformationback(loginInfo: String?)
}

class LoginViewModel {
    
    weak var delegate: ViewControllerDelegate?
    
    func login(from emailText: String?, passwoedText: String?) {
        guard let email = emailText else { return }
        guard let password = passwoedText else { return }
        
        print("Email id: \(email)")
        print("Password: \(password)")
        
        // Login API Calling
        
        delegate?.getLoginInformationback(loginInfo: email + password)
    }
}


