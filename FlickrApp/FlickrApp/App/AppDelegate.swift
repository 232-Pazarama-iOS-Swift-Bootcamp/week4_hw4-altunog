//
//  AppDelegate.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 13.10.2022.
//

import UIKit
import FirebaseCore
import SnapKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		FirebaseApp.configure()
		setupWindow()
		return true
	}

	fileprivate func setupWindow() {
		let window = UIWindow(frame: UIScreen.main.bounds)
		let viewController = SignInViewController()
//		let navigationController = UINavigationController(rootViewController: viewController)
		window.rootViewController = viewController
		window.makeKeyAndVisible()
		self.window = window
	}

}

