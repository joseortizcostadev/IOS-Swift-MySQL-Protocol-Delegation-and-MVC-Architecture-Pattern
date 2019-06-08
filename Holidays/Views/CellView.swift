//
//  CellView.swift
//  Holidays
//
//  Created by Jose's Work Station on 6/7/19.
//  Copyright © 2019 Jose Ortiz. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    func makeCustomText (model: Holiday?)  {
        guard let _ = model else {
            return
        }
        let customText = model!.description + ", " + model!.month + " " + model!.day + " " + model!.year
        self.textLabel?.text = customText
    }
}
