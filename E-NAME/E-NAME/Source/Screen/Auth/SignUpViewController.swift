//
//  SignUpViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var name1TextField: UITextField!
    @IBOutlet weak var name2TextField: UITextField!
    @IBOutlet weak var birthTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pw1TextField: UITextField!
    @IBOutlet weak var pw2TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        hideKeyboardWhenTappedAround()
    }
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let registerVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: RegisterViewController.className) as? RegisterViewController else { return }
        
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
}
