//
//  ViewController.swift
//  Milestone-Projects 19-21
//
//  Created by othman shahrouri on 9/28/21.
//

import UIKit

class ViewController: UITableViewController {
var notes = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
        navigationItem.rightBarButtonItem?.tintColor = .systemOrange
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        for (index,word) in notes[indexPath.row].enumerated() {
            if index < 5 {
                cell.textLabel?.text?.append(word)
            }
        }
        return cell
    }
    
    @objc func addNote() {
        
      
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        
        
    }
    

    
}

