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
    var description: String
    
    init(image: UIImage, workTitle: String, date: String, description: String) {
        self.image = image
        self.workTitle = workTitle
        self.date = date
        self.description = description
    }
}

class education {
    var educationPicture: UIImage?
    var educationTitle: String
    var educationDate: String
    var educationDescription: String
    
    init(educationPicture: UIImage, educationTitle: String, educationDate: String, educationDescription: String){
        self.educationPicture = educationPicture
        self.educationTitle = educationTitle
        self.educationDate = educationDate
        self.educationDescription = educationDescription
    }
}
