//
//  RecipeLearnViewController.swift
//  HiFive
//
//  Created by Lim Kiat on 22/10/16.
//  Copyright © 2016 Sahara. All rights reserved.
//

import UIKit

class RecipeLearnViewController: UIViewController {
    
    @IBOutlet weak var youtubeViewer: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        youtubeViewer.webView?.isHidden = true
        youtubeViewer.load(withVideoId: "9gDez9HmRmM")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
