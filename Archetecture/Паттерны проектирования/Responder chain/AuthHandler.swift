//
//  AuthHandler.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import Foundation
import UIKit

enum HandlerError: Error {
    case common
}

protocol Handler {

    var next: Handler? { get }

    func handle(_ data: FormData) -> Error?
}

class BaseHandler: Handler {

    var next: Handler?

    init(with handler: Handler? = nil) {
        self.next = handler
    }

    func handle(_ data: FormData) -> Error? {
        return next?.handle(data)
    }
}

class LoginHandler: BaseHandler {
    override func handle(_ data: FormData) -> Error? {
        
        guard let email = data.email, !email.isEmpty else  {
            return HandlerError.common
        }
        guard let password = data.password, !password.isEmpty else {
            return HandlerError.common
        }
        print("Data Login validated")
        return nil
    }
}

class RegistrationHandler: BaseHandler {
    override func handle(_ data: FormData) -> Error? {
        
        guard let name = data.name, !name.isEmpty else {
            return HandlerError.common
        }
        print("Data Registration validated")
        return next?.handle(data)
    }
}


class RegistrationViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formData = FormData(name: "", lastName: "", email: "", password: "")
        let loginHandler = LoginHandler(with: nil)
        let registrationHandler = RegistrationHandler(with: loginHandler)
        
        let error  = registrationHandler.handle(formData)
        if let error = error {
            print(error)
        } else {
            print("ok")
        }
    }
}
