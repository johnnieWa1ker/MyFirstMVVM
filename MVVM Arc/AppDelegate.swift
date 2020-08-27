//
//  AppDelegate.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 26.08.2020.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let nc = UINavigationController(rootViewController: ProfileViewController())
        nc.navigationBar.prefersLargeTitles = true
        
        window.rootViewController = nc
        window.makeKeyAndVisible()
        self.window = window

        return true
    }
}
