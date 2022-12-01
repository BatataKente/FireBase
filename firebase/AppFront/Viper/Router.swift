//
//  Router.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import UIKit

// Object
// Entry point

typealias EntryPoint = View & UIViewController

protocol Router {
    var entry: EntryPoint? {get}
    static func start() -> Router
}

class UserRouter: Router {
    var entry: EntryPoint?
    static func start() -> Router {
        let router = UserRouter()
        var presenter: Presenter = UserPresenter()
        presenter.router = router
        var view: View = UserViewController()
        view.presenter = presenter
        var interactor: Interactor = UserInteractor()
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        router.entry = view as? EntryPoint
        return router
    }
}
