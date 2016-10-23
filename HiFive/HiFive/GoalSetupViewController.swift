//
//  GoalSetupViewController.swift
//  HiFive
//
//  Created by Annabel Tay Yi Qing on 10/23/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit
import Alamofire

class GoalSetupViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var groupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.backgroundColor = UIColor.init(red: 214.0, green: 208.0, blue: 104.0, alpha: 1.0).cgColor
        textField.layer.cornerRadius = 10
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(_:)))
        view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
//    @IBAction func submitGoal(_ sender: UIButton) {
//        guard let amount = textField.text else {
//            return
//        }
//        let parameters = [
//            "payer_id": "158fc342-8a04-4331-be9a-14cef3623afc",
//            "payee_id": "d32db785-265b-4a6b-ac34-01822302d774",
//            "project_id": "1",
//            "amount" : amount
//        ]
//        
//        Alamofire.request("https://celestemoney2020.herokuapp.com/transact", method: .post, parameters: parameters, encoding: JSONEncoding.default)
//    }
    
    @IBAction func sendFunding(_ sender: UIButton) {
        guard let amount = textField.text else {
            return
        }
        let parameters = [
            "payer_id": "158fc342-8a04-4331-be9a-14cef3623afc",
            "payee_id": "d32db785-265b-4a6b-ac34-01822302d774",
            "project_id": "1",
            "amount" : amount
        ]
        
        Alamofire.request("https://celestemoney2020.herokuapp.com/transact", method: .post, parameters: parameters, encoding: JSONEncoding.default)
        
    }
    func tap(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    func keyboardWillShow(notification: NSNotification) {
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
        
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
}
