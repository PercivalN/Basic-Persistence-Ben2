//
//  Star.swift
//  Stars
//
//  Created by Percy Ngan on 12/25/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation


struct Star: Codable {
	let name: String
	let distance: Double

	var distanceDescription: String {
		return "\(distance) light years away"
	}
}
