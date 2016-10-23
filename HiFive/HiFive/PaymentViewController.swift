//
//  PaymentViewController.swift
//  HiFive
//
//  Created by Lim Kiat on 23/10/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit
import Alamofire

class PaymentViewController: UIViewController {
    
    @IBOutlet weak var moneyField: UITextField!
    
    @IBAction func fundButtonPressed(_ sender: UIButton) {
        
        let parameters = [
            "payer_id": "158fc342-8a04-4331-be9a-14cef3623afc",
            "payee_id": "d32db785-265b-4a6b-ac34-01822302d774",
            "project_id": "1"
        ]
        
        Alamofire.request("https://celestemoney2020.herokuapp.com/transact", method: .post, parameters: parameters, encoding: JSONEncoding.default)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
