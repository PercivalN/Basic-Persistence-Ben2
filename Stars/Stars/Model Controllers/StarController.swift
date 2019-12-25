//
//  StarController.swift
//  Stars
//
//  Created by Percy Ngan on 12/25/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

class StarController {

	// MARK: - Properties
	private(set) var stars: [Star] = []

	// MARK: - Methods
	@discardableResult func createStar(named name: String, withDistance distance: Double) -> Star {
		let star = Star(name: name, distance: distance)
		stars.append(star)
		return star
	}

}
