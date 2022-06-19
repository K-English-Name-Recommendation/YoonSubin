//
//  FirstViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/15.
//

import UIKit

class FirstViewController: UIViewController {

    var LengthBtnArray = [UIButton]()
    var genderBtnArray = [UIButton]()
    var popularBtnArray = [UIButton]()
    var christianityBtnArray = [UIButton]()
    var mbtiEIBtnArray = [UIButton]()
    var mbtiSNBtnArray = [UIButton]()
    var mbtiTFBtnArray = [UIButton]()
    var mbtiJPBtnArray = [UIButton]()

    @IBOutlet weak var lengthButton1: UIButton!
    @IBOutlet weak var lengthButton2: UIButton!
    @IBOutlet weak var lengthButton3: UIButton!
    
    @IBOutlet weak var genderButton1: UIButton!
    @IBOutlet weak var genderButton2: UIButton!
    @IBOutlet weak var genderButton3: UIButton!
    
    @IBOutlet weak var popularButton1: UIButton!
    @IBOutlet weak var popularButton2: UIButton!
    @IBOutlet weak var popularButton3: UIButton!
    
    @IBOutlet weak var christianityButton1: UIButton!
    @IBOutlet weak var christianityButton2: UIButton!
    @IBOutlet weak var christianityButton3: UIButton!
    
    @IBOutlet weak var mbtiButton1: UIButton!
    @IBOutlet weak var mbtiButton2: UIButton!
    @IBOutlet weak var mbtiButton3: UIButton!
    @IBOutlet weak var mbtiButton4: UIButton!
    @IBOutlet weak var mbtiButton5: UIButton!
    @IBOutlet weak var mbtiButton6: UIButton!
    @IBOutlet weak var mbtiButton7: UIButton!
    @IBOutlet weak var mbtiButton8: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        setButtonArray()
    }
    
    // 여기부터 설문조사 버튼
    @IBAction func lengthBtnAction(_ sender: UIButton) {
        for Btn in LengthBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func genderBtnAction(_ sender: UIButton) {
        for Btn in genderBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func popularBtnAction(_ sender: UIButton) {
        for Btn in popularBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func christianityBtnAction(_ sender: UIButton) {
        for Btn in christianityBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func mbtiEIBtnAction(_ sender: UIButton) {
        for Btn in mbtiEIBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func mbtiSNBtnArray(_ sender: UIButton) {
        for Btn in mbtiSNBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func mbtiTFBtnArray(_ sender: UIButton) {
        for Btn in mbtiTFBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
    }
    
    @IBAction func mbtiJPBtnArray(_ sender: UIButton) {
        for Btn in mbtiJPBtnArray {
            if Btn == sender {
                Btn.isSelected = true
                Btn.backgroundColor = UIColor(named: "enameMediumGrey")
            } else {
                Btn.isSelected = false
                Btn.backgroundColor = UIColor(named: "enameLightGrey")
            }
        }
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
    
    func setButtonArray() {
        LengthBtnArray.append(lengthButton1)
        LengthBtnArray.append(lengthButton2)
        LengthBtnArray.append(lengthButton3)
        
        genderBtnArray.append(genderButton1)
        genderBtnArray.append(genderButton2)
        genderBtnArray.append(genderButton3)

        popularBtnArray.append(popularButton1)
        popularBtnArray.append(popularButton2)
        popularBtnArray.append(popularButton3)

        christianityBtnArray.append(christianityButton1)
        christianityBtnArray.append(christianityButton2)
        christianityBtnArray.append(christianityButton3)
        
        mbtiEIBtnArray.append(mbtiButton1)
        mbtiEIBtnArray.append(mbtiButton2)
        mbtiSNBtnArray.append(mbtiButton3)
        mbtiSNBtnArray.append(mbtiButton4)
        mbtiTFBtnArray.append(mbtiButton5)
        mbtiTFBtnArray.append(mbtiButton6)
        mbtiJPBtnArray.append(mbtiButton7)
        mbtiJPBtnArray.append(mbtiButton8)
    }
}
