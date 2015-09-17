import UIKit
import AdbladeSDK

class TableViewController: UITableViewController {
    struct BannerData {
        let name: String
        let containerId: String
        let adType: AdbladeAdType
    }
    
    var items: [[BannerData]] = [
        [BannerData(name: "Banner", containerId: "13321-3790713564", adType: .banner)],
        [BannerData(name: "Native", containerId: "13321-3790713564", adType: .native)],
        [
            BannerData(name: "Medium Banner", containerId: "13323-2709803565", adType: .mediumRectangle),
            BannerData(name: "Rich Media", containerId: "14638-1071113961", adType: .richMediaMediumRectangle),
            BannerData(name: "Slideshow", containerId: "14639-1220217112", adType: .slideshow)
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 

        cell.textLabel?.text = self.items[indexPath.section][indexPath.row].name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let bannerData: BannerData = self.items[indexPath.section][indexPath.row]
        
        let viewController: AdbladeViewController?
        
        switch bannerData.name {
            case "Banner":
                viewController = BannerViewController()
                break
            case "Native":
                viewController = NativeViewController()
                break
            default:
                viewController = InterstitialViewController()
        }

        viewController!.containerId = bannerData.containerId
        viewController!.adType = bannerData.adType
        self.presentViewController((viewController as! UIViewController), animated: true, completion: nil)
    }
}
