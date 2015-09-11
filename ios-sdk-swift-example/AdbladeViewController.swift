import AdbladeSDK

protocol AdbladeViewController {
    var containerId: String { get set }
    var adType: AdbladeAdType { get set }
}