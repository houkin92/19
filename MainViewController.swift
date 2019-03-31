//
//  MainViewController.swift
//  模拟练习
//
//  Created by 方瑾 on 2019/2/3.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var firstButton: UIButton!
    var pickview = UIPickerView()
    var month = ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.addTarget(self, action: #selector(button), for: .valueChanged)
        firstTextField.inputView = pickview
      
    }
    
    @objc func button(_ sender:UIButton) {
        performSegue(withIdentifier:"ToSecondPage", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToSecondPage" {
            let nextPageVC = segue.destination as! SecondViewController
            nextPageVC.change = (firstLabel.text!,firstLabel.textColor)
            
        }
    }

}
extension MainViewController : UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return month.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return month[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var color = UIColor
        if month[row] == "2月" {
            firstLabel.text = "新年快乐"
            firstLabel.backgroundColor = .red
        }
    }
    
}
