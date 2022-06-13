//
//  SignUpViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var vertifyEmailButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        checkAccount()
    }
    
    @IBAction func editNameTF(_ sender: Any) {
        checkTextField()
    }
    
    @IBAction func editBirthTF(_ sender: Any) {
        checkTextField()
    }
    
    @IBAction func editEmailTF(_ sender: Any) {
        checkTextField()
        vertifyEmailButton.isEnabled = emailTextField.hasText
        if vertifyEmailButton.isEnabled {
            vertifyEmailButton.setTitleColor(.black, for: .normal)
        } else {
            vertifyEmailButton.setTitleColor(.lightGray, for: .normal)
        }
    }
    
    @IBAction func editPwTF(_ sender: Any) {
        checkTextField()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let registerVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: RegisterViewController.className) as? RegisterViewController else { return }
        
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    @IBAction func vertifyEmailButtonTapped(_ sender: Any) {
        alert(title: "인증 메일이 전송되었습니다.", message: "해당 메일로 보낸 인증 링크를 확인해주세요.")
    }
    
    private func setUI() {
        nameTextField.clearButtonMode = .whileEditing
        pwTextField.clearButtonMode = .whileEditing
        birthTextField.clearButtonMode = .whileEditing
        emailTextField.clearButtonMode = .whileEditing
    }
    
    private func checkTextField() {
        nextButton.isEnabled = (nameTextField.hasText && pwTextField.hasText && birthTextField.hasText && emailTextField.hasText)
        nextButton.backgroundColor = (nameTextField.hasText && pwTextField.hasText && birthTextField.hasText && emailTextField.hasText) ? UIColor.black : UIColor.lightGray
    }
    
    private func checkAccount() {
        nameTextField.attributedText = .none
        pwTextField.attributedText = .none
        birthTextField.attributedText = .none
        emailTextField.attributedText = .none
        
        vertifyEmailButton.isEnabled = false
        nextButton.isEnabled = false
        nextButton.backgroundColor = UIColor.lightGray
    }
}
