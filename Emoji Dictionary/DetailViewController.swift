//
//  DetailViewController.swift
//  Emoji Dictionary
//
//  Created by Michael Teti on 6/30/17.
//  Copyright © 2017 Michael Teti. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!

    var emoji = "No Emoji"
    var emojidef = "No Definition"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        definitionLabel.text = emojidef
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
