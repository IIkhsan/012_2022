//
//  AppDelegate.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 15.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let mvpController = MVPAssembly().assemble()
        
        window?.rootViewController = mvpController
        window?.makeKeyAndVisible()
        return true
    }
}

