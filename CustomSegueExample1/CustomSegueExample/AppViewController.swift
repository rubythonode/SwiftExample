//
//  ViewController.swift
//  CustomSegueExample
//
//  Created by 구봉회 on 06/01/2017.
//  Copyright © 2017 구봉회. All rights reserved.
//

import Cocoa

class AppViewController: NSViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func actionDoSegue1(_ sender: Any) {
        self.performSegue(withIdentifier: "Test1", sender: self)
    }
    
    @IBAction func actionDoSegue2(_ sender: Any) {
        self.performSegue(withIdentifier: "Test2", sender: self)
    }

}

