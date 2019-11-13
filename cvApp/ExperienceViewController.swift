//
//  ExperienceViewController.swift
//  cvApp
//
//  Created by Oliver Köping on 2019-11-05.
//  Copyright © 2019 Oliver Köping. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    var works: [work] = []
    var educations: [education] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        works = createArrayWork()
        educations = createArrayEducation()
    }
    func createArrayWork() -> [work] {
        
        var tempWorkCells: [work] = []
        
        let work1 = work(image: UIImage(named:"1")!, workTitle: "work 1", date: "2005", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        let work2 = work(image: UIImage(named:"2")!, workTitle: "work 2", date: "2006",description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        let work3 = work(image: UIImage(named:"3")!, workTitle: "work 3", date: "2007",description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        
        tempWorkCells.append(work1)
        tempWorkCells.append(work2)
        tempWorkCells.append(work3)
        
        return tempWorkCells
    }
    func createArrayEducation() -> [education] {
        
        var tempEducationCells: [education] = []
        let education1 = education(educationPicture: UIImage(named:"1")!, educationTitle: "Education 1", educationDate: "2000", educationDescription: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        tempEducationCells.append(education1)
        return tempEducationCells
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        if(section == 0){
            label.text = "Work"
        }
        else{
            label.text = "Education"
        }
        label.backgroundColor = UIColor.lightGray
        return label
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC  = segue.destination as? ExperiencedDetailViewController {
            if let work = sender as? work{
                destVC.work = work
            }
            else if let Education = sender as? education{
                destVC.education = Education
            }
                    
        }
        
    }

   

}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return works.count
        }else{
            return educations.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        if(indexPath.section == 0){
            let Work = works[indexPath.row]
            
            cell.setWork(work: Work)
        }
        else{
            let Education = educations[indexPath.row]
            
            cell.setEducation(education: Education)
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // fix for education
        if(indexPath.section == 0 ){
            let Work = works[indexPath.row]
            performSegue(withIdentifier: "experienceShow", sender: Work)
        }
        else{
            let Education = educations[indexPath.row]
            performSegue(withIdentifier: "experienceShow", sender: Education)
        }
        
        
        
    }
}

