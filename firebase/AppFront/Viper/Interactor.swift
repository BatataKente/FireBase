//
//  Interactor.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import Foundation

// object
// protocol
// reference presenter

protocol Interactor {
    var presenter: Presenter? {get set}
}

class UserInteractor: Interactor {
    var presenter: Presenter?
    func getUsers() {
        
    }
}
