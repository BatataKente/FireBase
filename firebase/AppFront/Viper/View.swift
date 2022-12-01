//
//  View.swift
//  firebase
//
//  Created by Josicleison Elves on 09/09/1401 AP.
//

import UIKit

// object
// protocol
// reference presenter

protocol View {
    var presenter: Presenter? {get set}
    func update(with users: [User])
    func update(with error: String)
}

class UserViewController: UIViewController, View {
// MARK: - variables
    var presenter: Presenter?
    private lazy var table: (view: UITableView, cellIdentifier: String) = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemMint
        let identifier = "Cell"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        return (view: tableView, cellIdentifier: identifier)
    }()
// MARK: - overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table.view)
        view.backgroundColor = .systemPink
        table.view
            .constraint(attributes: [.leading, .trailing, .centerY])
            .constraint(attribute: .height, multiplier: 0.5)
    }
// MARK: - funcs
    func update(with users: [User]) {}
    func update(with error: String) {}
}

extension UserViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: table.cellIdentifier
        ) else {return UITableViewCell()}
        cell.contentView.removeSubviews()
        let label = Create.label("Lero Lero - \(indexPath.row)")
        cell.contentView.addSubview(label)
        cell.backgroundColor = .white
        label.constraint(attributes: [.centerY, .centerX])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height*0.5
    }
}
