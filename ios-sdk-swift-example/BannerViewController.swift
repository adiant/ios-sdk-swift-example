import UIKit
import AdbladeSDK

// example banner implementation
class BannerViewController: UIViewController, AdbladeDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create an ad view and add it to the current view
        let abView: AdbladeBannerView = AdbladeViewFactory.createView("13321-3790713564", viewType: .banner, delegate: self) as! AdbladeBannerView
        self.view.addSubview(abView)
    }
    
    func didHaveError(view: AdbladeView, error: AdbladeError) {
        // normally, you would want to do something here other than print the error
        println(error)
    }
    
    func didReceiveAd(view: AdbladeView) {
        // center the ad view after receiving the ad
        (view as! UIView).center = self.view.center
    }
}