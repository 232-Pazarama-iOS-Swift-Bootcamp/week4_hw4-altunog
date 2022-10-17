//
//  SignInViewController.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 13.10.2022.
//

import UIKit

class SignInViewController: UIViewController {
//	go back to root view at sign out
//	self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
//https://stackoverflow.com/questions/47322379/swift-how-to-dismiss-all-of-view-controllers-to-go-back-to-root
	
	
	// MARK: - Properties
	private let viewModel = AuthViewModel()
	
	// MARK: - Outlets
	@IBOutlet weak var emailField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	@IBOutlet weak var signInButton: UIButton!
	@IBOutlet weak var signUpTextButton: UIButton!
	@IBOutlet weak var signUpLabel: UILabel!
	
	// MARK: - Inits
//	init(viewModel: AuthViewModel) {
//		self.viewModel = viewModel
//		super.init(nibName: nil, bundle: nil)
//	}
//
//	required init?(coder: NSCoder) {
//		fatalError("init(coder:) has not been implemented")
//	}
	
	// MARK: - Life Cycle
	override func viewDidLoad() {
        super.viewDidLoad()
		emailField.makeUnderlinedTextField()
		passwordField.makeUnderlinedTextField()
		signInButton.layer.cornerRadius = 8
    }
	
	@IBAction private func signUpTextButtonTapped(_ button: UIButton) {
		let signUpVC = SignUpViewController()
		present(signUpVC, animated: true)
	}

}

