import UIKit
import AdbladeSDK

// example banner implementation
class BannerViewController: UIViewController, AdbladeViewController, AdbladeDelegate {
    internal var containerId: String = ""
    internal var adType: AdbladeAdType = .banner
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button: UIButton = UIButton(frame: CGRectMake(5, 50, 60, 50))
        let touch: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("done:"))
        button.setTitle("Done", forState: UIControlState.Normal)
        button.addGestureRecognizer(touch)
        self.view.addSubview(button)
        
        // create an ad view and add it to the current view
        let abView: AdbladeBannerView = AdbladeViewFactory.createView(self.containerId, adType: self.adType, delegate: self) as! AdbladeBannerView
        
        abView.loadAd()

        self.view.addSubview(abView)
    }
    
    func didHaveError(view: AdbladeView, error: AdbladeError) {
        // normally, you would want to do something here other than print the error
        print(error)
    }
    
    func didReceiveAd(view: AdbladeView) {
        // center the ad view after receiving the ad
        (view as! UIView).center = self.view.center
    }
    
    func done(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}