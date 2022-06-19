//
//  ThirdViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/15.
//

import UIKit

class ThirdViewController: UIViewController {

    var isFirstViewSelected: Bool = false
    var submitCount = 0
    var imageArray = [[UIImage(named: "B1"), UIImage(named: "B2")],
                      [UIImage(named: "C1"), UIImage(named: "C2")],
                      [UIImage(named: "D1"), UIImage(named: "D2")]]
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    
    @IBOutlet weak var imageLabel1: UILabel!
    @IBOutlet weak var imageLabel2: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        setTapGesture()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        submitCount += 1
        if submitCount == 4 {
            guard let nextVC = UIStoryboard(name: "Result", bundle: nil).instantiateViewController(withIdentifier: WaitingViewController.className) as? WaitingViewController else { return }
            self.navigationController?.pushViewController(nextVC, animated: true)
        } else {
            switch submitCount {
            case 1:
                imageLabel1.text = "B - 1"
                imageLabel2.text = "B - 2"
                imageView1.image = imageArray[submitCount-1][0]
                imageView2.image = imageArray[submitCount-1][1]
            case 2:
                imageLabel1.text = "C - 1"
                imageLabel2.text = "C - 2"
                imageView1.image = imageArray[submitCount-1][0]
                imageView2.image = imageArray[submitCount-1][1]
            case 3:
                imageLabel1.text = "D - 1"
                imageLabel2.text = "D - 2"
                imageView1.image = imageArray[submitCount-1][0]
                imageView2.image = imageArray[submitCount-1][1]
            default:
                break
            }
        }
        containerView1.backgroundColor = UIColor(named: "enameLightGrey")
        containerView2.backgroundColor = UIColor(named: "enameLightGrey")

    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.className) as? MainViewController else { return }
        let nvc = UINavigationController(rootViewController: mainVC)
        guard let uWindow = self.view.window else { return }
        uWindow.rootViewController = nvc
        uWindow.makeKey()
        UIView.transition(with: uWindow, duration: 0.5, options: [.transitionCrossDissolve], animations: {}, completion: nil)
    }
    
    func setTapGesture() {
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(handleTap1(sender:)))
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(handleTap2(sender:)))
        containerView1.addGestureRecognizer(tapGesture1)
        containerView2.addGestureRecognizer(tapGesture2)
    }
    
    @objc func handleTap1(sender: UITapGestureRecognizer) {
        sender.view?.backgroundColor = UIColor(named: "enameMediumGrey")
        containerView2.backgroundColor = UIColor(named: "enameLightGrey")
    }
    
    @objc func handleTap2(sender: UITapGestureRecognizer) {
        sender.view?.backgroundColor = UIColor(named: "enameMediumGrey")
        containerView1.backgroundColor = UIColor(named: "enameLightGrey")
    }
}
