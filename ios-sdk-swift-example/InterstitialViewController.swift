import UIKit
import AdbladeSDK

// example interstitial view
class InterstitialViewController: UIViewController, AdbladeViewController, AdbladeDelegate {
    internal var containerId: String = ""
    internal var adType: AdbladeAdType = .mediumRectangle
    
    override func loadView() {
        super.loadView()
        
        // make a new ad view and set it as this controller's view
        let abView: AdbladeInterstitialView = AdbladeViewFactory.createView(self.containerId, adType: self.adType, delegate: self) as! AdbladeInterstitialView
        self.view = abView
    }
    
    func didHaveError(view: AdbladeView, error: AdbladeError) {
        // you probably want to do something better here
        println(error)
    }
}