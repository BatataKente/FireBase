//
//  Hierarchy.swift
//  firebase
//
//  Created by Josicleison Elves on 10/09/1401 AP.
//

import UIKit

extension UIView {
    func removeSubviews<T>(ofType: T.Type) {
        for view in subviews where view as? T != nil {
            view.removeFromSuperview()
        }
    }
    func removeSubviews() {
        for view in subviews {
            view.removeFromSuperview()
        }
    }
}
