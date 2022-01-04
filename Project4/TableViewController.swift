//
//  TableViewController.swift
//  Project4
//
//  Created by Robin Phillips on 04/01/2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Choose website"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)

        cell.textLabel?.text = websites[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewController {
            
            vc.website = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}
