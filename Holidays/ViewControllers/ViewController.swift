//
//  ViewController.swift
//  Holidays
//
//  Created by Jose's Work Station on 6/7/19.
//  Copyright © 2019 Jose Ortiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var months: UITextField!
    let model = HolidaysModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        model.delegate = self
    }
    @IBAction func findHolidays(_ sender: Any) {
        let param = ["month": self.months.text!]
        model.downloadHolidays(parameters: param, url: URLServices.holidays)
    }
}

extension ViewController: Downloadable {
    func didReceiveData(data: Any) {
        // The data model has been dowloaded at this point
        // Now, pass the data model to the Holidays table view controller
       DispatchQueue.main.sync {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondViewController = storyboard.instantiateViewController(withIdentifier: "holidaysID") as! HolidaysViewController
            secondViewController.model = (data as! [Holiday])
            self.present(secondViewController, animated: true, completion: nil)
        }
    }
}



