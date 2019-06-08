//
//  HolidaysViewController.swift
//  Holidays
//
//  Created by Jose's Work Station on 6/7/19.
//  Copyright © 2019 Jose Ortiz. All rights reserved.
//

import Foundation
import UIKit

class HolidaysViewController: UITableViewController {
    var model: [Holiday]?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let _ = self.model else {
            return 0
        }
        return self.model!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "holidaysid", for: indexPath)
        // Holiday selection
        let holiday = self.model![indexPath.row]
        cell.makeCustomText(model: holiday)
        // Return the configured cell
        return cell
    }
}
