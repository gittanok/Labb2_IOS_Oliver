//
//  workCell.swift
//  cvApp
//
//  Created by Oliver Köping on 2019-11-06.
//  Copyright © 2019 Oliver Köping. All rights reserved.
//

import Foundation
import UIKit

class work {
    
    var image: UIImage?
    var workTitle: String
    var date: String
    
    init(image: UIImage, workTitle: String, date: String) {
        self.image = image
        self.workTitle = workTitle
        self.date = date
    }
}
