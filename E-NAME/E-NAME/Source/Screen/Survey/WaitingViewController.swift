//
//  WaitingViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/19.
//

import UIKit

class WaitingViewController: UIViewController {
    
    @IBOutlet weak var progressIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        setUI()
    }
    
    func setUI() {
        guard let nextVC = UIStoryboard(name: "Result", bundle: nil).instantiateViewController(withIdentifier: ResultViewController.className) as? ResultViewController else { return }
        progressIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            self.progressIndicator.stopAnimating()
            self.navigationController?.pushViewController(nextVC, animated: true)
        })
    }
}
