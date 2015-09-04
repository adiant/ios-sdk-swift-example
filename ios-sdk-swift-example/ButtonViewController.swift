//
//  ButtonViewController.swift
//  ios-sdk-swift-example
//
//  Created by Joe Frazer on 9/4/15.
//  Copyright (c) 2015 Joe Frazer. All rights reserved.
//

import UIKit
import AdbladeSDK

class ButtonViewController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var newController = segue.destinationViewController as! InterstitialViewController
        
        if segue.identifier == "banner" {
            newController.containerId = "13323-2709803565"
        }
        else if segue.identifier == "richMedia" {
            newController.containerId = "14638-1071113961"
            newController.adType = .richMediaMediumRectangle
        }
        else if segue.identifier == "slideshow" {
            newController.containerId = "14639-1220217112"
            newController.adType = .slideshow
        }
    }
}