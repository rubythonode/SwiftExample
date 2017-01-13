//
//  ViewController.swift
//  ViewSegueExample
//
//  Created by 구봉회 on 13/01/2017.
//  Copyright © 2017 구봉회. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    
    @IBAction func actionPopover(_ sender: Any) {

        self.performSegue(withIdentifier: "SeguePopoever", sender: self);
        
    }
 
    @IBAction func actionModal(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SegueModal", sender: self);
        
    }
    
    
    @IBAction func actionSheet(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SegueSheet", sender: self);
        
    }
    
    @IBAction func actionShow(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SegueShow", sender: self);
        
    }
    
}

