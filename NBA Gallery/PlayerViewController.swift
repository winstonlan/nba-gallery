//
//  PlayerViewController.swift
//  NBA Gallery
//
//  Created by Winston Lan on 4/27/17.
//  Copyright © 2017 winstonlan. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.photo.image = UIImage(named: "steph")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
