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
//        guard let data = MockParser.load([Data].self, from: "Data") else { return }
//        print(data)
    }
    
    @IBAction func createButtonTapped(_ sender: UIButton) {
        print("설문조사 버튼 클릭")
        guard let nextVC = UIStoryboard(name: "Survey", bundle: nil).instantiateViewController(withIdentifier: FirstViewController.className) as? FirstViewController else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
