//
//  HolidaysModel.swift
//  Protocol Delegation
//
//  Created by Jose's Work Station on 6/7/19.
//  Copyright © 2019 Jose Ortiz. All rights reserved.
//

import Foundation

struct Holiday: Decodable {
    var hid: Int
    var description: String
    var month: String
    var day: String
    var year: String
    
}

class HolidaysModel {
    
    weak var delegate: Downloadable?
    let networkModel = Network()
    
    func downloadHolidays(parameters: [String: Any], url: String) {
        let request = networkModel.request(parameters: parameters, url: url)
        networkModel.response(request: request) { (data) in
            let model = try! JSONDecoder().decode([Holiday]?.self, from: data) as [Holiday]?
            self.delegate?.didReceiveData(data: model! as [Holiday])
        }
    }
}
