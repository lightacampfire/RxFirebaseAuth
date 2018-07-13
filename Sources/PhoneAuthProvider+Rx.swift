//
//  PhoneAuthProvider+Rx.swift
//  RxFirebaseAuth
//
//  Created by Tom de Ruiter on 7/13/18.
//  Copyright © 2018 Suguru Kishimoto. All rights reserved.
//

import Foundation
import FirebaseAuth
import RxSwift

extension Reactive where Base: PhoneAuthProvider {
    public func verifyPhoneNumber(phoneNumber: String, uiDelegate: AuthUIDelegate? = nil) -> Single<(String?)> {
        return .create { observer in
            self.base.verifyPhoneNumber(phoneNumber, uiDelegate: uiDelegate, completion: singleEventHandler(observer))
            return Disposables.create()
        }
    }
}
