//
//  ViewController.swift
//  CoinToss
//
//  Created by Amit Nivedan Kalra on 7/5/15.
//  Copyright © 2015 Amit Nivedan Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var theCoins = Coins() // Getting into the struct located in the Options.swift.
    
    @IBOutlet weak var resultLabel: UILabel! // This is the result.
    
    @IBOutlet weak var coinImage: UIImageView! // This is the UIImageView located on top of the result.
    
    @IBAction func flipCoin(sender: AnyObject) {
        
            resultLabel.text = theCoins.flipCoins() // Random result appears.
        
        if resultLabel.text == theCoins.head { // If equal to head, image of head appears.
            
            coinImage.image = UIImage(named: "Heads.png")
            
        } else { // If not heads, image of tails appears.
            
            coinImage.image = UIImage(named: "Tails.png")
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

