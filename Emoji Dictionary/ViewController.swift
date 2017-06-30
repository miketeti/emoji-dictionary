//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Michael Teti on 6/30/17.
//  Copyright © 2017 Michael Teti. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var EmojiTableView: UITableView!
    
    var emojis = ["😀","🤡","🐶","🌪","🍺","💩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Look to this viewController
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Returns the number of emojis in array
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

