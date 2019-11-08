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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
    func setUI() {
        UIImagePicture.image = work?.image
        UILabelTitle.text = work?.workTitle
        UILabelDate.text = work?.date
    }
    

  

}
