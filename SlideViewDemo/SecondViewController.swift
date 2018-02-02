//
//  SecondViewController.swift
//  SwiftDemo
//
//  Created by Nishchita on 9/20/17.
//  Copyright © 2017 Nishchita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 145
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    extension SecondViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 2
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DemoTableViewCell
            
            if indexPath.row == 0 {
                cell.subLbl1.text = "sub label 1"
                cell.subLbl2.text = "sub label 1"
                cell.subLbl3.text = "sub label 1"
                cell.subLbl4.text = "sub label 1"
                cell.headerLbl.text = "Header label 1"
            }
            else
            {
                cell.subLbl1.text = "sub label 2"
                cell.subLbl2.text = "sub label 2"
                cell.subLbl3.text = "sub label 2"
                cell.subLbl4.text = "sub label 2"
                cell.headerLbl.text = "Header label 2"
            }

            cell.selectionStyle = .none

            return cell
        }
        func tableView(tableView: UITableView,
                       heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
        {
            
            return 145
        }
    }


