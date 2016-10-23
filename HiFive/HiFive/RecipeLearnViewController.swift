//
//  RecipeLearnViewController.swift
//  HiFive
//
//  Created by Lim Kiat on 22/10/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit
import WebKit

class RecipeLearnViewController: UIViewController {
    
    var webView: WebView
    
    required init(coder aDecoder: NSCoder) {
        self.webView = WebView()
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        webView.setPosition(view)
        webView.setUrl("http://www.top20.com")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
