//
//  ViewController.swift
//  test01
//
//  Created by Choi Elin on 07/06/2019.
//  Copyright © 2019 Choi Elin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text01: UITextField!
   
    @IBOutlet weak var text02: UITextField!
    
    @IBOutlet weak var text03: UITextField!
    
    var name:  String?
    
    var part : String?
    
    var age : String?
    
    
    @IBAction func buttonclick(_ sender: UIButton) {
        
        name = text01.text
        part = text02.text
        age = text03.text
        
        if let myName = name, let myPart = part, let myAge = age {
            print(myName,myPart,myAge)
            simpleAlert(title: "입력완료", message: "\(myName),\(myPart),\(myAge)")
        
        }
   
    }
    
    
    func simpleAlert(title: String, message msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

