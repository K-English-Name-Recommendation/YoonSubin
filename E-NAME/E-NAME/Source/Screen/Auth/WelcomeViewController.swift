//
//  WelcomeViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String?
    
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUserName()
    }
    
    @IBAction func completeButtonTapped(_ sender: Any) {
        
    }
    
    private func setUserName() {
        if let userName = userName {
            welcomeMessageLabel.text = "\(userName)님,\n 가입을 축하합니다"
        }
    }
}
