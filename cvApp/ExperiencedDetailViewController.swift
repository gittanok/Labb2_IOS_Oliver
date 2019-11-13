//
//  ExperiencedDetailViewController.swift
//  cvApp
//
//  Created by Oliver Köping on 2019-11-08.
//  Copyright © 2019 Oliver Köping. All rights reserved.
//

import UIKit

class ExperiencedDetailViewController: UIViewController {

    
    @IBOutlet weak var UIImagePicture: UIImageView!
    
    @IBOutlet weak var UILabelTitle: UILabel!
    
    @IBOutlet weak var UILabelDate: UILabel!
    
    @IBOutlet weak var UILabelDescription: UILabel!
    
    var work: work?
    var education: education?
    override func viewDidLoad() {
        super.viewDidLoad()
        if work != nil{
            setWorkUI()
        }
        else{
            setEducationUI()
        }
        
        
    }
    func setWorkUI() {
        UIImagePicture.image = work?.image
        UILabelTitle.text = work?.workTitle
        UILabelDate.text = work?.date
        UILabelDescription.text = work?.description
    }
    func setEducationUI(){
        UIImagePicture.image = education?.educationPicture
        UILabelTitle.text = education?.educationTitle
        UILabelDate.text = education?.educationDate
        UILabelDescription.text = education?.educationDescription
        
    }
    

  

}
