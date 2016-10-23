//
//  GoalSetupViewController.swift
//  HiFive
//
//  Created by Annabel Tay Yi Qing on 10/23/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit

class GoalSetupViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.backgroundColor = UIColor.init(red: 214.0, green: 208.0, blue: 104.0, alpha: 1.0).cgColor
        textField.layer.cornerRadius = 10
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    func tap(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
}
