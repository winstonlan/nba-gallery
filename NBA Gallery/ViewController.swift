//
//  ViewController.swift
//  NBA Gallery
//
//  Created by Winston Lan on 4/26/17.
//  Copyright © 2017 winstonlan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let nbaPlayers = ["Damian Lillard", "Steph Curry", "Giannis Antetokounmpo", "D'angelo Russel"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows that are supposed to be displayed on the page.
        return nbaPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // alter the row attributes for the tableView.
        let cell = UITableViewCell()
        cell.textLabel?.text = nbaPlayers[indexPath.row]
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

