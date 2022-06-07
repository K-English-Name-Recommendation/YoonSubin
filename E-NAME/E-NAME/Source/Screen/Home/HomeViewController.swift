//
//  HomeViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/05/12.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let loginVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: LoginViewController.className) as? LoginViewController else { return }
        
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
        guard let signupVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: SignUpViewController.className) as? SignUpViewController else { return }
        
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
}
