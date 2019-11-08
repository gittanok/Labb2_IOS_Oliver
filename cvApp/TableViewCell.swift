//
//  TableViewCell.swift
//  cvApp
//
//  Created by Oliver Köping on 2019-11-06.
//  Copyright © 2019 Oliver Köping. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

 
    
    @IBOutlet weak var workImage: UIImageView!
    
    
    @IBOutlet weak var workName: UILabel!
    
    @IBOutlet weak var workDate: UILabel!
    
    func setWork(work: work){
        workImage.image = work.image
        workName.text = work.workTitle
        workDate.text = work.date
    }
    func setEducation(education: education){
        workImage.image = education.educationPicture
        workName.text = education.educationTitle
        workDate.text = education.educationDate
    }
        
    
    
}
//class education {
  //  var educationPicture: UIImage?
    //var educationTitle: String
    //var educationDate: String
    
    //init(educationPicture: UIImage, educationTitle: String, educationDate: String){
      //  self.educationPicture = educationPicture
        //self.educationTitle = educationTitle
        //self.educationDate = educationDate
   


