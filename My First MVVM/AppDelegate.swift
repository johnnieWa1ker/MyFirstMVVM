//
//  AppDelegate.swift
//  My First MVVM
//
//  Created by Johnnie Walker on 26.08.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = ProfileViewController()
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}
