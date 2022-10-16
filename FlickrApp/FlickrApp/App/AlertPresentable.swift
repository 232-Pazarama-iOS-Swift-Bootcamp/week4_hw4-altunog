//
//  AlertPresentable.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 16.10.2022.
//

import UIKit

protocol AlertPresentable: UIViewController { }

extension AlertPresentable {
	func showAlert(title: String? = nil, message: String? = nil, hasCancelOption: Bool = false) {
		let alertController = UIAlertController(title: title,
												message: message,
												preferredStyle: .alert)
		let defaultAction = UIAlertAction(title: "OK",
										  style: .default)
		if hasCancelOption {
			let cancelAction = UIAlertAction(title: "Cancel",
											 style: .cancel)
			alertController.addAction(cancelAction)
		}
		alertController.addAction(defaultAction)
		present(alertController, animated: true)
	}
}
