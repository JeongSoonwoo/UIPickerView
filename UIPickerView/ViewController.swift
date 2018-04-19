//
//  ViewController.swift
//  UIPickerView
//
//  Created by 정순우 on 2018. 4. 19..
//  Copyright © 2018년 정순우. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return 10
        }else {
            return 100
        }
    }
    //Picker 에 값 넣기
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "comp01 \(row)"
        }else{
            return "comp02 \(row)"
        }

    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            myLabel.text = "comp01 \(row)"
        } else {
            myLabel.text = "comp02 \(row)"
        }
    }
}
