//
//  StarTableViewCell.swift
//  Stars
//
//  Created by Percy Ngan on 12/24/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class StarTableViewCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var distanceLabel: UILabel!


	var star: Star? {
		didSet {
			updateViews()
		}
	}

	private func updateViews() {
		guard let star = star else { return }

		nameLabel.text = star.name
		distanceLabel.text = star.distanceDescription
	}
}
