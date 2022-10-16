//
//  AuthViewController.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 13.10.2022.
//

import UIKit

class AuthViewController: UIViewController {

	@IBOutlet weak var usernameTF: UITextField!
	@IBOutlet weak var passwordTF: UITextField!
	@IBOutlet weak var signInButton: UIButton!
	
	@IBOutlet weak var signUpLabel: UILabel!
	
	// MARK: - Life Cycle
	override func viewDidLoad() {
        super.viewDidLoad()
		usernameTF.makeUnderlinedTextField()
		passwordTF.makeUnderlinedTextField()
		configureSignUpLabel()
		signInButton.layer.cornerRadius = 8
    }
	
	func configureSignUpLabel() {
		let tap = UITapGestureRecognizer(target: self, action: #selector(signUpLabelTapped))
		signUpLabel.isUserInteractionEnabled = true
		signUpLabel.addGestureRecognizer(tap)
	}
	
	@objc func signUpLabelTapped() {
		let signupVC = SignUpViewController()
		present(signupVC, animated: true)
		print("Tapped")
	}
	

}


