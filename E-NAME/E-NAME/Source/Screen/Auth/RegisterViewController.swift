//
//  RegisterViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        checkAccount()
    }
    
    @IBAction func editUserNameTF(_ sender: Any) {
        nextButton.isEnabled = true
        checkTextField()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let welcomeVC = UIStoryboard(name: "Welcome", bundle: nil).instantiateViewController(withIdentifier: WelcomeViewController.className) as? WelcomeViewController else { return }
        
        welcomeVC.userName = userNameTextField.text
        
        self.present(welcomeVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: false)
        }
    }
    
    private func checkTextField() {
        nextButton.isEnabled = userNameTextField.hasText
        nextButton.backgroundColor = userNameTextField.hasText ? UIColor.black : UIColor.lightGray
    }
    
    private func checkAccount() {
        userNameTextField.attributedText = .none
        nextButton.isEnabled = false
        nextButton.backgroundColor = UIColor.lightGray
    }
}
