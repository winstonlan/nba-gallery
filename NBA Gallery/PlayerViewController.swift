//
//  PlayerViewController.swift
//  NBA Gallery
//
//  Created by Winston Lan on 4/27/17.
//  Copyright © 2017 winstonlan. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    var player = Player()
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.photo.image = UIImage(named: player.file)
        nameLabel.text = "Name: \(player.name)"
        teamLabel.text = "Team: \(player.team)"
        numberLabel.text = "Number: \(player.number)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
