//
//  LoginViewController.swift
//  HiFive
//
//  Created by Lim Kiat on 22/10/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginKid: UIButton!
    @IBOutlet weak var loginAdult: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loginKid.layer.cornerRadius = 2;
        loginKid.layer.borderWidth = 1;
        loginKid.layer.borderColor = UIColor.white;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
