//
//  FirstViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/15.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let nextVC = UIStoryboard(name: "Survey", bundle: nil).instantiateViewController(withIdentifier: SecondViewController.className) as? SecondViewController else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.className) as? MainViewController else { return }
        let nvc = UINavigationController(rootViewController: mainVC)
        guard let uWindow = self.view.window else { return }
        uWindow.rootViewController = nvc
        uWindow.makeKey()
        UIView.transition(with: uWindow, duration: 0.5, options: [.transitionCrossDissolve], animations: {}, completion: nil)
    }
}
