import UIKit
import AdbladeSDK

// example native implementation
class NativeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // find the ad view and set its properties
        let abView: AdbladeNativeView = self.view.viewWithTag(1) as! AdbladeNativeView
        abView.adTypes = [AdbladeAdType.native.rawValue]
        abView.containerId = "13321-3790713564"
    }
}