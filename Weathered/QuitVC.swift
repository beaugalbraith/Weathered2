//
//  QuitVC.swift
//  Weathered
//
//  Created by gem on 7/11/17.
//  Copyright © 2017 beau. All rights reserved.
//

import Cocoa

class QuitVC: NSViewController {

    @IBOutlet weak var quitButton: NSButton!
    @IBAction func quitButtonPressed(_ sender: Any) {
        NSApp.terminate(sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
