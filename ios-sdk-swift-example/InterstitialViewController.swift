import UIKit
import AdbladeSDK

// example interstitial view
class InterstitialViewController: UIViewController, AdbladeDelegate {
    override func loadView() {
        super.loadView()
        
        // make a new ad view and set it as this controller's view
        let abView: AdbladeInterstitialView = AdbladeViewFactory.createView("13323-2709803565", viewType: .interstitial, delegate: self) as! AdbladeInterstitialView
        self.view = abView
    }
    
    func didHaveError(view: AdbladeView, error: AdbladeError) {
        // you probably want to do something better here
        println(error)
    }
}