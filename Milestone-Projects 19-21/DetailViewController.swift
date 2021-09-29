//
//  DetailViewController.swift
//  Milestone-Projects 19-21
//
//  Created by othman shahrouri on 9/28/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var noteText: UITextView!
    var delegate: DataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
       

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        delegate?.passStringBack(string: noteText.text)
    }
    
    



}
