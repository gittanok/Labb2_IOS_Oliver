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
    override func viewDidLoad() {
        super.viewDidLoad()
        works = createArray()
        
    }
    func createArray() -> [work] {
        
        var tempWorkCells: [work] = []
        
        let work1 = work(image: UIImage(named:"1")!, workTitle: "work 1", date: "2005")
        let work2 = work(image: UIImage(named:"2")!, workTitle: "work 2", date: "2006")
        let work3 = work(image: UIImage(named:"3")!, workTitle: "work 3", date: "2007")
        
        tempWorkCells.append(work1)
        tempWorkCells.append(work2)
        tempWorkCells.append(work3)
        
        return tempWorkCells
    }
    

   

}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return works.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Work = works[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.setWork(work: Work)
        
        return cell
    }
}

