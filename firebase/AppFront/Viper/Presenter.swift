//
//  Presenter.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import Foundation

// object
// protocol
// reference interactor, router, view

protocol Presenter {
    var router: Router? {get set}
    var interactor: Interactor? {get set}
    var view: View? {get set}
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: Presenter {
    var interactor: Interactor?
    var router: Router?
    var view: View?
    func interactorDidFetchUsers(with result: Result<[User], Error>) {}
}
