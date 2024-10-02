//
//  ViewController.swift
//  MVVM_LoginSample
//
//  Created by Mantosh Kumar on 02/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
    }

    @IBAction func loginAction(_ sender: Any) {
        viewModel.login(from: userNameTextField.text, passwoedText: passwordTextField.text)
    }
}

extension ViewController: ViewControllerDelegate {
    func getLoginInformationback(loginInfo: String?) {
        
        guard let info = loginInfo else { return }
        
        print("The Information get form view model: \(info)")
    }
}

