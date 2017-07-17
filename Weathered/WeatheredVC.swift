//
//  ViewController.swift
//  Weathered
//
//  Created by gem on 7/6/17.
//  Copyright © 2017 beau. All rights reserved.
//

import Cocoa

class WeatheredVC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear() {
        self.view.layer?.backgroundColor = NSColor(red: 0.29, green: 0.72, blue: 0.98, alpha: 1.00).cgColor
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

