//
//  PersonListTableViewController.swift
//  NatPersonList
//
//  Created by HappyLiya on 28.02.2021.
//

import UIKit

class PersonListTableViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactNameCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    


    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let contactDetailsVC = segue.destination as! ContactDetailsViewController
            contactDetailsVC.person = persons[indexPath.row]
        }
    }
}
