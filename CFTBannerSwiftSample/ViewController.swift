//
//  ViewController.swift
//  CFTBannerSwiftSample
//
//  Created by CF-NB on 2023/11/26.
//

import UIKit
import iMFADTV


class ViewController: UIViewController {

    var banner: MFBannerViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let point = CGPoint(x: 0, y: 0)
        banner = MFBannerViewModel(bannerID: "18384", adSize: MFAdSize970X250, origin: point);
        banner?.delegate = self;
        banner?.setDebugInfo(true);
        banner?.setAdAutoRefresh(true);
        self.view.addSubview((banner?.bannerView!)!);
        banner?.startRequestAd()
    }

}
extension ViewController: MFBannerViewModelDelegate {
    func requestAdSuccess() {
        print("requestAdSuccess");
        banner?.showAd();
    }
    
    func requestAdFail() {
        print("requestAdFail");
    }
}

