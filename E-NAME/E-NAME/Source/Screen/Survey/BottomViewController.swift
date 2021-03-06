//
//  BottomViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/19.
//

import UIKit

class BottomViewController: UIViewController {

    var name: String?
    var englishMeaning: String?
    var koreanMeaning: String?
    var genderMeaning: String?
    var religion: Bool?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var bottomViewHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first,
           touch.view == self.view {
            hideBottomSheetWithAnimation()
        }
    }
    
    func setUI() {
        guard let name = name,
              let englishMeaning = englishMeaning,
              let koreanMeaning = koreanMeaning,
              let genderMeaning = genderMeaning,
              let religion = religion else { return }
        
        let religions = religion ? "O" : "X"
        
        nameLabel.text = name
        detailLabel.text = "영어 뜻 : " + englishMeaning + "\n한글 뜻 : " + koreanMeaning + "\n성별 : " + genderMeaning + "\n종교여부 : " + religions
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

