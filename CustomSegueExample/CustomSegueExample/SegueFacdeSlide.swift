//
//  SegueFacdeSlide.swift
//  CustomSegueExample
//
//  Created by 구봉회 on 07/02/2017.
//  Copyright © 2017 구봉회. All rights reserved.
//

import Cocoa

class SegueFacdeSlide: NSStoryboardSegue {
    
    override func perform() {
        
        let source:NSViewController =  super.sourceController as! NSViewController // 현재 Segue를 Call한 ViewController
        let destination:NSViewController = super.destinationController as! NSViewController //   타겟 View Controller


        for naviView:NSView in source.view.subviews{
            
            if(naviView.identifier == "navigationView") {
                destination.view.frame = naviView.frame
                destination.view.frame.origin.x = naviView.frame.width
                destination.view.frame.origin.y = 0
                destination.view.alphaValue = 0
                
                if(naviView.subviews.count != 0){
                    NSAnimationContext.beginGrouping()
                    NSAnimationContext.current().duration = 1.0
                    naviView.subviews[0].animator().frame.origin.x = naviView.frame.width
                    naviView.subviews[0].animator().alphaValue = 0
                    NSAnimationContext.endGrouping()
                  
                    naviView.subviews[0].removeFromSuperview()
                }
                
                naviView.addSubview(destination.view)
                
                NSAnimationContext.beginGrouping()
                NSAnimationContext.current().duration = 1.0
                naviView.subviews[0].animator().frame.origin.x = 0
                naviView.subviews[0].animator().alphaValue = 1
                NSAnimationContext.endGrouping()
                
            }
        }

    }
}
