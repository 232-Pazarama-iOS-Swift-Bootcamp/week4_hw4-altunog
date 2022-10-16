//
//  SignUpViewController.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 16.10.2022.
//

import UIKit
import Firebase



class SignUpViewController: UIViewController {
	
	let signUpView = SignUpView()
	
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
