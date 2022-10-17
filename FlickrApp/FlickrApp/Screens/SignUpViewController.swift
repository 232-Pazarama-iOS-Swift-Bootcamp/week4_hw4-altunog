//
//  SignUpViewController.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 16.10.2022.
//

import UIKit
import Firebase



class SignUpViewController: UIViewController {
	
	private lazy var signUpView: SignUpView = {
		let view = SignUpView()
		view.delegate = self
		return view
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view = signUpView
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		signUpView.usernameField.makeUnderlinedTextField()
		signUpView.emailField.makeUnderlinedTextField()
		signUpView.passwordField.makeUnderlinedTextField()
		signUpView.passwordConfirmField.makeUnderlinedTextField()
	}

}

extension SignUpViewController: SignUpViewDelegate {
	func signUpView(_ view: SignUpView, didTapSignUpButton button: UIButton) {
		print("sign up tapped")
	}
	
	func signUpView(_ view: SignUpView, didTapCancelButton button: UIButton) {
		print("cancel tapped")
		dismiss(animated: true)
	}
}
