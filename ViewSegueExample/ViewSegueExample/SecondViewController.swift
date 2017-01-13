//
//  SecondViewController.swift
//  ViewSegueExample
//
//  Created by 구봉회 on 13/01/2017.
//  Copyright © 2017 구봉회. All rights reserved.
//

import Cocoa

class SecondViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    @IBAction func actionBack(_ sender: Any) {
        
        self.dismiss(self);
        
    }
    
}
