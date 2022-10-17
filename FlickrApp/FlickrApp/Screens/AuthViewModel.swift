//
//  AuthViewModel.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 16.10.2022.
//

import UIKit
import FirebaseAuth
import FirebaseRemoteConfigSwift

enum AuthViewModelChange {
	case didErrorOccur(_ error: Error)
	case didSignUpSuccesful
}

final class AuthViewModel {
	
	var changeHandler: ((AuthViewModelChange) -> Void)? = nil
	
	func signUp(email: String, password: String) {
		Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
			if let error = error {
				self.changeHandler?(.didErrorOccur(error))
			}
			self.changeHandler?(.didSignUpSuccesful)
		}
	}
	
	func signIn(email: String, pssword: String) {
		
	}
}

