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
        
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.className) as? MainViewController else { return }
        
        /// 루트 뷰 컨트롤러 변경 및 애니메이션 효과
        guard let uWindow = self.view.window else { return }
        uWindow.rootViewController = mainVC
        uWindow.makeKey()
        UIView.transition(with: uWindow, duration: 0.5, options: [.transitionCrossDissolve], animations: {}, completion: nil)
        
    }
    
    private func setUserName() {
        if let userName = userName {
            welcomeMessageLabel.text = "\(userName)님,\n 가입을 축하합니다"
        }
    }
}
