//
//  MyProjectsViewController.swift
//  HiFive
//
//  Created by Lim Kiat on 23/10/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit
import Alamofire

class MyProjectsViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var percentageLabel: UILabel!
    var amountTheyHave: NSInteger = 0
    var amountTheyNeed : NSInteger = 0
    var moreThanHundred: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let amountTheyHave = 10.0
        let amountTheyNeed = 10.0
        let percentage1 = amountTheyHave / amountTheyNeed as Double
        let percentage2 = percentage1 * 100
        self.percentageLabel.text = "\(percentage2) %"
        // Do any additional setup after loading the view, typically from a nib.
        
//        Alamofire.request("https://celestemoney2020.herokuapp.com/test?user_id=1").responseJSON { response in
//            debugPrint(response)
//            
//            if let json = response.result.value as? [String:NSInteger] {
//                self.amountTheyNeed = json["amountTheyNeed"]!
//                self.amountTheyHave = json["amountTheyHave"]!
//                let amountA: NSInteger = 5
//                let amountB: NSInteger = 10
//                let percentage = amountA / amountB * 100
//                self.percentageLabel.text = "\(percentage) %"
//            }
//        }
    }
    @IBAction func selectProject(_ sender: UIButton) {
        let amountTheyHave = 10.0
        let amountTheyNeed = 10.0
        let percentage1 = amountTheyHave / amountTheyNeed as Double
        let percentage2 = percentage1 * 100

        print("\(percentage2)")
        if (percentage2 >= 100) {
            self.moreThanHundred = true
            performSegue(withIdentifier: "first", sender: nil)
            //prepare(for: "first", sender: sender)
        } else {
            self.moreThanHundred = false
            performSegue(withIdentifier: "second", sender: nil)
          //  prepare(for: "second", sender: sender)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
