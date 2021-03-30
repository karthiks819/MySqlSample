//
//  ViewController.swift
//  MySqlExample
//
//  Created by Karthik on 30/03/21.
//

import UIKit

class ViewController: UIViewController {
    var personModelArray = [PersonModel]()
    var dbHelper = DBHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.personModelArray = self.dbHelper.read()
        self.dbHelper.insert(id: 0, name: "s", age: 1)
        self.dbHelper.insert(id: 1, name: "Bilal", age: 24)
        self.dbHelper.insert(id: 2, name: "Bosh", age: 25)
        self.dbHelper.insert(id: 3, name: "Thor", age: 23)
        self.dbHelper.insert(id: 4, name: "Edward", age: 44)
        self.dbHelper.insert(id: 5, name: "Ronaldo", age: 34)
    }
    
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personModelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if( !(cell != nil))
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
            
        }
        
        cell?.textLabel?.text = self.personModelArray[indexPath.row].name
        return cell!
        
    }
    
    
}
