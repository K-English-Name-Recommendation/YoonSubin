//
//  SecondViewController.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/15.
//

import UIKit

class SecondViewController: UIViewController {
    
    var colorList: [String] = ["빨간색", "주황색", "노란색", "초록색", "파란색", "남색", "보라색", "흰색", "회색", "검정색"]
    let picker = UIPickerView()
    
    @IBOutlet weak var colorTextField1: UITextField!
    @IBOutlet weak var colorTextField2: UITextField!
    @IBOutlet weak var colorTextField3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonCustom()
        configPickerView()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let nextVC = UIStoryboard(name: "Survey", bundle: nil).instantiateViewController(withIdentifier: ThirdViewController.className) as? ThirdViewController else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func cancelButtontapped(_ sender: Any) {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.className) as? MainViewController else { return }
        let nvc = UINavigationController(rootViewController: mainVC)
        guard let uWindow = self.view.window else { return }
        uWindow.rootViewController = nvc
        uWindow.makeKey()
        UIView.transition(with: uWindow, duration: 0.5, options: [.transitionCrossDissolve], animations: {}, completion: nil)
    }
    
}

extension SecondViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func configPickerView() {
        picker.delegate = self
        picker.dataSource = self
        colorTextField1.inputView = picker
        configToolbar()
    }
    
    func configToolbar() {
        // toolbar를 만들어준다.
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor.black
        toolBar.sizeToFit()
        
        // 만들어줄 버튼
        // flexibleSpace는 취소~완료 간의 거리를 만들어준다.
        let doneBT = UIBarButtonItem(title: "완료", style: .plain, target: self, action: #selector(self.donePicker))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelBT = UIBarButtonItem(title: "취소", style: .plain, target: self, action: #selector(self.cancelPicker))
        
        // 만든 아이템들을 세팅해주고
        toolBar.setItems([cancelBT,flexibleSpace,doneBT], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        // 악세사리로 추가한다.
        colorTextField1.inputAccessoryView = toolBar
    }

    // "완료" 클릭 시 데이터를 textfield에 입력 후 입력창 내리기
    @objc func donePicker() {
        let row = self.picker.selectedRow(inComponent: 0)
        self.picker.selectRow(row, inComponent: 0, animated: false)
        self.colorTextField1.text = self.colorList[row]
        self.colorTextField1.resignFirstResponder()
    }

    // "취소" 클릭 시 textfield의 텍스트 값을 nil로 처리 후 입력창 내리기
    @objc func cancelPicker() {
        self.colorTextField1.text = nil
        self.colorTextField1.resignFirstResponder()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.colorTextField1.text = self.colorList[row]
    }
}
