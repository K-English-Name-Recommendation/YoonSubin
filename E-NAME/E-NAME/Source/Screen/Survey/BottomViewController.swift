//
//  BottomViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/19.
//

import UIKit

class BottomViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var bottomViewHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first,
           touch.view == self.view {
            hideBottomSheetWithAnimation()
        }
    }
}

// MARK: - Show/Hide Animation
extension BottomViewController {
    func showBottomSheetWithAnimation() {
        UIView.animate(withDuration: 0.3) {
            self.bottomViewHeight.constant = 500
            self.view.layoutIfNeeded()
        }
    }
    
    func hideBottomSheetWithAnimation() {
        UIView.animate(withDuration: 0.3) {
            self.bottomViewHeight.constant = 0
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.dismiss(animated: false)
        }
    }
}

