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
    
    let temp = [1,2,3]
    var nbaPlayers:[Player] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows that are supposed to be displayed on the page.
        return nbaPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // alter the row attributes for the tableView.
        let cell = UITableViewCell()
        cell.textLabel?.text = nbaPlayers[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "moveSegue", sender: nbaPlayers[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let playerVC = segue.destination as! PlayerViewController
        playerVC.player = sender as! Player
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        nbaPlayers = makePlayers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makePlayers() -> [Player] {
        let players = [
            Player(name: "Stephen Curry",
            team: "Golden State Warriors",
            file: "steph",
            number: 30),
            Player(name: "Damian Lillard",
                   team: "Portland Trailblazers",
                   file: "dame",
                   number: 0),
            Player(name: "Giannis Antetokounmpo",
                   team: "Milwaukee Bucks",
                   file: "giannis",
                   number: 34),
            Player(name: "D'Angelo Russell",
                   team: "Los Angeles Lakers",
                   file: "dlo",
                   number: 1),
        ]
        
        return players
    }


}

