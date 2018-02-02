//
//  ThirdViewController.swift
//  SwiftDemo
//
//  Created by Nishchita on 11/24/17.
//  Copyright © 2017 Nishchita. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    extension ThirdViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 2
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
            
            cell.textLabel?.text = "header lbl"
            cell.detailTextLabel?.text = "sub text"
            
            cell.selectionStyle = .none
            
            return cell
        }
        
    }


