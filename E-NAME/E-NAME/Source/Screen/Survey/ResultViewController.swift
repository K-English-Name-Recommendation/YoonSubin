//
//  ResultViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/19.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTapGesture()
    }
    
    func setTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        detailView.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer) {        
        guard let bottomVC = self.storyboard?.instantiateViewController(withIdentifier: "BottomViewController") as? BottomViewController else { return }
        bottomVC.modalTransitionStyle = .crossDissolve
        bottomVC.modalPresentationStyle = .overFullScreen
        present(bottomVC, animated: false) {
            bottomVC.showBottomSheetWithAnimation()
        }
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.className) as? MainViewController else { return }
        let nvc = UINavigationController(rootViewController: mainVC)
        guard let uWindow = self.view.window else { return }
        uWindow.rootViewController = nvc
        uWindow.makeKey()
        UIView.transition(with: uWindow, duration: 0.5, options: [.transitionCrossDissolve], animations: {}, completion: nil)
    }
}
