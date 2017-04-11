//
//  AppDelegate.swift
//  XamarinUITestPoc
//
//  Created by Vincent BACH on 11/04/2017.
//  Copyright © 2017 babzich. All rights reserved.
//

import UIKit

import MobileCenter
import MobileCenterAnalytics
import MobileCenterCrashes
import MobileCenterDistribute

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.backgroundColor = UIColor.white
            let mapViewController = ViewController()
            window.rootViewController = UINavigationController(rootViewController: mapViewController)
            window.makeKeyAndVisible()
        }

        MSMobileCenter.start("94800b0b-1004-4f0f-be7a-572b0d49a840", withServices:[
            MSAnalytics.self,
            MSCrashes.self,
            MSDistribute.self
        ])

        return true
    }
}

