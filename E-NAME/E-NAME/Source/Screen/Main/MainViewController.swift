//
//  MainViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/14.
//

import UIKit

class MainViewController: UIViewController {
    
    var datas: [Data] = [] {
        didSet {
            print("mock data update")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
//        guard let data = MockParser.load([Data].self, from: "Data") else { return }
//        print(data)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func createButtonTapped(_ sender: UIButton) {
        print("설문조사 버튼 클릭")
        guard let surveyVC = UIStoryboard(name: "Survey", bundle: nil).instantiateViewController(withIdentifier: FirstViewController.className) as? FirstViewController else { return }
        self.navigationController?.pushViewController(surveyVC, animated: true)
    }
    
    @IBAction func profileButtonTapped(_ sender: Any) {
        guard let profileVC = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: ProfileViewController.className) as? ProfileViewController else { return }
        self.navigationController?.pushViewController(profileVC, animated: true)
    }
}
