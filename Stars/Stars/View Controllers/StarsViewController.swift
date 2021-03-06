//
//  StarsViewController.swift
//  Stars
//
//  Created by Percy Ngan on 12/24/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {

	// MARK: - Outlets
	@IBOutlet weak var starNameTextField: UITextField!
	@IBOutlet weak var distanceTextField: UITextField!
	@IBOutlet weak var tableView: UITableView!

	let starController = StarController()

	override func viewDidLoad() {
		super.viewDidLoad()

		tableView.dataSource = self
	}

	// MARK: - Actions
	@IBAction func printStars(_ sender: UIButton) {
		print(starController.listStars())
	}

	@IBAction func createStar(_ sender: UIButton) {
		guard let name = starNameTextField.text,
			let distanceString = distanceTextField.text,
			!name.isEmpty,
			!distanceString.isEmpty,
			let distance = Double(distanceString) else { return }

		starController.createStar(named: name, withDistance: distance)
		starNameTextField.text = ""
		distanceTextField.text = ""
		starNameTextField.becomeFirstResponder()
		tableView.reloadData()
	}
}

extension StarsViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return starController.stars.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "StarCell", for: indexPath) as? StarTableViewCell else { return UITableViewCell() }

		let star = starController.stars[indexPath.row]
		cell.star = star

		return cell
	}


}

