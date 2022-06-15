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
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        checkAccount()
        setUI()
    }
    
    @IBAction func editEmailTF(_ sender: Any) {
        checkTextField()
    }
    
    
    @IBAction func editPwTF(_ sender: Any) {
        checkTextField()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.className) as? MainViewController else { return }
        self.navigationController?.pushViewController(mainVC, animated: true)
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
        guard let signupVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: SignUpViewController.className) as? SignUpViewController else { return }
        
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    private func setUI() {
        idTextField.clearButtonMode = .whileEditing
        pwTextField.clearButtonMode = .whileEditing
    }
    
    private func checkTextField() {
        loginButton.isEnabled = (idTextField.hasText) && (pwTextField.hasText)
        loginButton.backgroundColor = (idTextField.hasText) && (pwTextField.hasText) ? UIColor.black : UIColor.lightGray
    }
    
    private func checkAccount() {
        idTextField.attributedText = .none
        pwTextField.attributedText = .none
        
        loginButton.isEnabled = false
        loginButton.backgroundColor = UIColor.lightGray
    }
}

