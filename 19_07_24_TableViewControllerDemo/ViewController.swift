//
//  ViewController.swift
//  19_07_24_TableViewControllerDemo
//
//  Created by Vishal Jagtap on 19/07/24.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var studentsTableView: UITableView!
    var number : Int = 10          // you can declare, define, initialize stored properties at class level but cannot do this at extension level
    
    var names : [String] = ["shrawani", "saqib", "sambhaji", "parth", "megha"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentsTableView.delegate = self
        studentsTableView.dataSource = self
    }
}

extension ViewController : UITableViewDataSource{
    
//    var n : Int = 7          // you can declare, define, initialize stored properties at class level but cannot do
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentsTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        
        studentTableViewCell.textLabel?.text = names[indexPath.row]
        return studentTableViewCell
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
