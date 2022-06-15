//
//  SecondViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/15.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let nextVC = UIStoryboard(name: "Survey", bundle: nil).instantiateViewController(withIdentifier: ThirdViewController.className) as? ThirdViewController else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
