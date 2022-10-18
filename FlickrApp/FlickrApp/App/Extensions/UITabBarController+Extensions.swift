//
//  UITabBarController+Extensions.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 18.10.2022.
//

import UIKit

extension UITabBarController {
	func configureTabBarAppearance() {
		self.setViewControllers(viewControllers, animated: true)
		self.tabBar.itemPositioning = .centered
		self.tabBar.backgroundColor = .MyTheme.smoke.withAlphaComponent(0.8)
		self.tabBar.tintColor = .MyTheme.firebrick
		self.modalPresentationStyle = .fullScreen
	}
}
