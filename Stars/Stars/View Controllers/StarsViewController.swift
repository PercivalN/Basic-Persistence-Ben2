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
		// Do any additional setup after loading the view.
	}

	// MARK: - Actions
	@IBAction func printStars(_ sender: UIButton) {
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



