//
//  MetroLineTableViewCell.swift
//  LAMetro
//
//  Created by Joshua Homann on 5/5/17.
//  Copyright © 2017 josh. All rights reserved.
//

import UIKit


class MetroLineTableViewCell: UITableViewCell {
    // MARK: IBOutlet
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starButton: UIButton!
    // MARK: Variables
    var line: MetroLine! {
        didSet {
            setup()
        }
    }
    // MARK: Constants
    static let reuseIdentifier = String(describing: MetroLineTableViewCell.self)
    // MARK: UITableViewCell
    // MARK: Instance Methods
    private func setup() {
        numberLabel.text = line.lineNumber
        descriptionLabel.text = line.lineName
        starButton.setImage(line.isFavorite ? #imageLiteral(resourceName: "button.filled.star") : #imageLiteral(resourceName: "button.empty.star"), for: .normal)
    }
    // MARK: IBAction
    @IBAction func tapStar(_ sender: Any) {
        line.isFavorite = !line.isFavorite
        setup()
    }
}

