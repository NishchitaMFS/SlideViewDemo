//
//  FirstViewController.swift
//  SwiftDemo
//
//  Created by Nishchita on 9/20/17.
//  Copyright © 2017 Nishchita. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    

    
    let artists = Artist.artistsFromBundle()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        NotificationCenter.default.addObserver(forName: .UIContentSizeCategoryDidChange, object: .none, queue: OperationQueue.main) { [weak self] _ in
            self?.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DemoTableViewCell
        
        let artist = artists[indexPath.row]
        cell.detailLbl.text = artist.bio
        cell.sampleImg.image = artist.image
        cell.subLbl.text = artist.name
        cell.headerLbl.text = "testing"
        
        
        
        cell.selectionStyle = .none
        
        return cell
    }
}
