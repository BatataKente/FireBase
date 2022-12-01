//
//  Create.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import UIKit

struct Create {
    static func label(_ text: String? = nil) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .label
        return label
    }
    static func textField() -> UITextField {
        let textField = UITextField()
        return textField
    }
    static func stackView(_ spacing: CGFloat? = nil, arranged subviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: subviews)
        stackView.axis = .vertical
        if let spacing = spacing {
            stackView.layer.cornerRadius = spacing*0.5
            stackView.spacing = spacing
            stackView.isLayoutMarginsRelativeArrangement = true
            stackView.layoutMargins = UIEdgeInsets(top: spacing, left: spacing*0.5,
                                                   bottom: spacing, right: spacing*0.5)
        }
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .white
        return stackView
    }
    static func button(_ text: String? = nil, handler: UIActionHandler? = nil) -> UIButton {
        let button = UIButton()
        if let handler = handler {
            button.addAction(UIAction(handler: handler), for: .touchUpInside)
        }
        button.setTitle(text, for: .normal)
        button.setTitleColor(.label, for: .normal)
        return button
    }
}
