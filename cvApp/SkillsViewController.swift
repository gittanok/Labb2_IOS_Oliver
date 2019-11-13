//
//  SkillsViewController.swift
//  cvApp
//
//  Created by Oliver Köping on 2019-11-13.
//  Copyright © 2019 Oliver Köping. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var AnimationBox1: UIView!
    
    
    func moveRight(view: UIView){
        view.center.x += 250
    }
    func moveLeft(view: UIView){
        view.center.x -= 250
    }
    //present(UIViewController(), animated: true, completion: nil)

    @IBAction func DismissViewController(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func onAnimationClicked() {
        let duration: Double = 2.0
        UIView.animate(withDuration: duration, animations: {
           self.moveRight(view: self.AnimationBox1)
        }) {(finished) in
            if finished {
                UIView.animate(withDuration: duration, animations:{
                    self.moveLeft(view: self.AnimationBox1)
                })
            }
            
        }
    }
    
  //  @IBAction func onAnimationClicked() {
     //
        
        
}
    

