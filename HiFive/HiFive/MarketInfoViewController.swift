//
//  MarketInfoViewController.swift
//  HiFive
//
//  Created by Lim Kiat on 23/10/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit

class MarketInfoViewController: UIViewController {
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var questionMark: UIButton!
    @IBOutlet weak var youtubePlayer: YTPlayerView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        youtubePlayer.webView?.isHidden = true
        youtubePlayer.load(withVideoId: "i1xz5Kv-7VY")
        
        doneButton.layer.borderWidth = 2;
        doneButton.layer.borderColor = UIColor.white.cgColor
        doneButton.layer.cornerRadius = 10
        
        questionMark.layer.borderWidth = 2;
        questionMark.layer.borderColor = UIColor.white.cgColor
        questionMark.layer.cornerRadius = 25
        
        textField.borderStyle = UITextBorderStyle.roundedRect
        textField.layer.borderColor = UIColor.white.cgColor
        textField.textColor = UIColor.white
        textField.font = UIFont(name: "American Typewriter", size: 25)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(_:)))
        view.addGestureRecognizer(tapGesture)
        
//        NotificationCenter.default.addObserver(self, selector: #selector(Login.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(Login.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
