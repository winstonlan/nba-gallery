//
//  Player.swift
//  NBA Gallery
//
//  Created by Winston Lan on 4/28/17.
//  Copyright © 2017 winstonlan. All rights reserved.
//

struct Player {
    
    let name, team, file: String
    let number: Int
    
    init() {
        self.name = ""
        self.team = ""
        self.file = ""
        self.number = 0
    }
    
    init(name: String, team: String, file: String, number: Int) {
        self.name = name
        self.team = team
        self.file = file
        self.number = number
    }
}
