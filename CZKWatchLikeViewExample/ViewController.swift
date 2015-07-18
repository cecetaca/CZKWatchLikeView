//
//  ViewController.swift
//  CZKWatchLikeViewExample
//
//  Created by Cecilio C. Tamarit on 18/07/15.
//  Copyright © 2015 Cecilio C. Tamarit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var watchLikeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let testView = CZKWatchLikeView(width: 100, backgroundColor: UIColor.greenColor(), name: "Cecilio Tamarit")
        testView.frame.origin.x = 42
        testView.frame.origin.y = 42
        view.addSubview(testView)
        let anotherTestView = CZKWatchLikeView(width: 242, backgroundColor: UIColor.yellowColor(), name: "Cecilio")
        anotherTestView.frame.origin.x = 66.11
        anotherTestView.frame.origin.y = 119.42
        view.addSubview(anotherTestView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

