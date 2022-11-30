//
//  ViewModel.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import Firebase

struct FirebaseViewModel {
    private let auth = Auth.auth()
    func validateUser(email: String?, password: String?) {
        auth.createUser(withEmail: email ?? "",
                        password: password ?? "") {_, error in
            if let error = error {
                print("ERROR:", error)
            } else {
                print("Success!")
            }
        }
    }
}
