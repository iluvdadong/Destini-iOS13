//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    let stories = [
        Story(t: "You see a fork in the road", c1: "Take a left", c2: "Take a right"),
        Story(t: "You see a tiger", c1: "Shout for help", c2: "Play Dead"),
        Story(t: "You find a treasure chest", c1: "Open it", c2: "Check for traps")
    ]
    
    mutating func nextStory(userChoice: String) {
        if userChoice == "Take a left" {
            storyNumber += 1
        } else {
            storyNumber += 2
        }
    }
    
    func getStoryText() -> String {
        return stories[storyNumber].text
    }
    
    func getStoryChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getStoryChoice2() -> String {
           return stories[storyNumber].choice2
       }
}

