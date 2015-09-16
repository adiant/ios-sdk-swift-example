import UIKit
import AdbladeSDK

// example native implementation
class NativeViewController: UIViewController, AdbladeViewController {
    internal var containerId: String = ""
    internal var adType: AdbladeAdType = .native

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button: UIButton = UIButton(frame: CGRectMake(5, 50, 60, 50))
        let touch: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("done:"))
        button.setTitle("Done", forState: UIControlState.Normal)
        button.addGestureRecognizer(touch)
        self.view.addSubview(button)
        
        let abView: AdbladeNativeView = AdbladeViewFactory.createView(self.containerId, adType: self.adType, delegate: nil) as! AdbladeNativeView
        abView.loadAd()
        
        abView.center = self.view.center
        
        self.view.addSubview(abView)
    }
    
    func done(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}