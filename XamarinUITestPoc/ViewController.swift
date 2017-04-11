//
//  ViewController.swift
//  XamarinUITestPoc
//
//  Created by Vincent BACH on 11/04/2017.
//  Copyright © 2017 babzich. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private let titleLabel: UILabel

    // MARK: - Initializers

    init() {
        self.titleLabel = UILabel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: - Setup

    private func setupView() {
        view.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10.0),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10.0),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.text = "Title"
    }
}

