//
//  ViewController.swift
//  Milestone-Projects 19-21
//
//  Created by othman shahrouri on 9/28/21.
//

import UIKit

protocol DataDelegate {
    func passStringBack(string: String)
}

class ViewController: UITableViewController, DataDelegate {
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
        for word in notes[indexPath.row] {
            cell.textLabel?.text?.append(word)
        }
        return cell
    }
    
    @objc func addNote() {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            navigationController?.pushViewController(vc, animated: true)
            vc.delegate = self
        }
        
      
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func passStringBack(string: String) {
        notes.append(string)
        
    }

    
}

