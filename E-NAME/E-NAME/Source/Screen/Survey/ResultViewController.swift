//
//  ResultViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/19.
//

import UIKit

class ResultViewController: UIViewController {
    
    var datas: [Data] = [] {
        didSet {
            print("mock data update")
        }
    }
    
    var nameData: Data?
    var genderString = ""
    
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        setTapGesture()
        setUI()
    }
    
    func setData() {
        guard let data = MockParser.load([Data].self, from: "Data") else { return }
        print(data.count)
        let randomNum = Int.random(in: 0..<73)
        print(randomNum)
        nameData = data[randomNum]
    }
    
    func setTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        detailView.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer) {        
        guard let bottomVC = self.storyboard?.instantiateViewController(withIdentifier: "BottomViewController") as? BottomViewController else { return }
        
        bottomVC.name = nameData?.name
        bottomVC.englishMeaning = nameData?.mean.components(separatedBy: "@")[0]
        bottomVC.koreanMeaning = nameData?.mean.components(separatedBy: "@")[1]
        bottomVC.genderMeaning = genderString

        bottomVC.modalTransitionStyle = .crossDissolve
        bottomVC.modalPresentationStyle = .overFullScreen
        present(bottomVC, animated: false) {
            bottomVC.showBottomSheetWithAnimation()
        }
    }
    
    func setUI() {
        backButtonCustom()
        
        switch nameData?.gender {
        case 0:
            genderString = "남성"
        case 1:
            genderString = "여성"
        case 2:
            genderString = "무관"
        default:
            break
        }
        nameLabel.text = nameData?.name
        detailLabel.text = "뜻 : " + (nameData?.mean.replacingOccurrences(of: "@", with: "\n     ") ?? "") + "\n성별 : " + genderString
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
