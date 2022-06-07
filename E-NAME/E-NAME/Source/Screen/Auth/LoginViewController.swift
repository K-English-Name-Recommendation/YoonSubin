//
//  LoginViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
        guard let signupVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: SignUpViewController.className) as? SignUpViewController else { return }
        
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
}

