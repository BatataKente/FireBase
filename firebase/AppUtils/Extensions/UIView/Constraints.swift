//
//  Constraints.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import UIKit

extension UIView {
    @discardableResult func constraint(_ attribute: NSLayoutConstraint.Attribute,
                                       relation: NSLayoutConstraint.Relation = .equal,
                                       to item: Any? = nil,
                                       itemAttribute: NSLayoutConstraint.Attribute? = nil,
                                       multiplier: CGFloat = 1,
                                       constant: CGFloat = 0) -> Self {
        superview?.addConstraint(NSLayoutConstraint(item: self,
                                                    attribute: attribute,
                                                    relatedBy: relation,
                                                    toItem: item ?? superview,
                                                    attribute: itemAttribute ?? attribute,
                                                    multiplier: multiplier,
                                                    constant: constant))
        return self
    }
}
