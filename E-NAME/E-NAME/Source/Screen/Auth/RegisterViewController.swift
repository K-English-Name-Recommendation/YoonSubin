//
//  RegisterViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func completeButtonTapped(_ sender: Any) {
        
        guard let welcomeVC = UIStoryboard(name: "Welcome", bundle: nil).instantiateViewController(withIdentifier: WelcomeViewController.className) as? WelcomeViewController else { return }
        
        welcomeVC.userName = userNameTextField.text
        
        self.present(welcomeVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: false)
        }
    }
    
}
