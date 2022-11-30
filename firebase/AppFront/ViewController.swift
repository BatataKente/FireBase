//
//  ViewController.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    private let auth = Auth.auth()
    private let eMailTextField = Create.textField()
    private let passWordTextField = Create.textField()
    private lazy var signInButton = Create.button("SIGN IN") {[weak self]_ in
        self?.auth.createUser(withEmail: self?.eMailTextField.text ?? "",
                              password: self?.passWordTextField.text ?? "") {_, error in
            if let error = error {
                print("ERROR:", error)
            } else {
                print("Success!")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let stackView = Create.stackView(view.frame.height*0.025, arranged: [eMailTextField,
                                                                             passWordTextField,
                                                                             signInButton])
        view.addSubview(stackView)
        view.backgroundColor = .systemPurple
        stackView
            .constraint(.centerX)
            .constraint(.centerY)
            .constraint(.width, multiplier: 0.8)
    }
}
