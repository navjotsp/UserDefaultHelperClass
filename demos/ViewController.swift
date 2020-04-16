//
//  ViewController.swift
//  demos
//
//  Created by Navjot Singh on 4/15/20.
//  Copyright © 2020 Navjot Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFld: UITextField!
    
    @IBOutlet weak var textLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func setterBtn(_ sender: UIButton) {
        if let text = txtFld.text, text != "" {
            UserDefaults.standard.setAccessKey(value: text)
            txtFld.resignFirstResponder()
            txtFld.text = ""
        } else {
            print("Textfield is empty")
        }
    }
    
    @IBAction func getterBtn(_ sender: UIButton) {
        if let text = UserDefaults.standard.getAccessKey(){
            self.textLbl.text = text
        } else {
            print("Unable to find access key in UserDefault")
        }
    }
    
}

