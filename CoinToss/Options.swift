//
//  Options.swift
//  CoinToss
//
//  Created by Amit Nivedan Kalra on 7/5/15.
//  Copyright © 2015 Amit Nivedan Kalra. All rights reserved.
//

import Foundation

struct Coins {
    
    let choices = ["Heads", "Tails"] // Array of choices.
    
    let head = "Heads" // Head
    let tails = "Tails" // Tails
    
    func flipCoins() -> String { // Randomize function.
        
        let coinInt = UInt32(choices.count) // Making
        let randomCoin = arc4random_uniform(coinInt)
        let finalThing = Int(randomCoin)
        
//  full form      let wholeThing = Int(arc4random_uniform(UInt32(choices.count))
        
        return choices[finalThing]
    }
}