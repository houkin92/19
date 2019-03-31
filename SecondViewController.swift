//
//  SecondViewController.swift
//  模拟练习
//
//  Created by 方瑾 on 2019/2/3.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var secondLabel: UILabel!
    var change : (text:String,textColor:UIColor) = ("",.white)
    


    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = change.text
        secondLabel.textColor = change.textColor
        

     
    }
    

    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
