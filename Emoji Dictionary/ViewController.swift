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
    var emojidefs = ["smiley face","silly clown","cute puppy","large tornado","pint of beer","pile of poo"]
    var idxpath :Int = 0
    
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)

        idxpath = indexPath.row
        performSegue(withIdentifier: "moveSegue", sender: self)
    }
    
    //this is the last function that runs before segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //constant to hold next ViewController
        let detailVC = segue.destination as! DetailViewController
        detailVC.emoji = emojis[idxpath]
        detailVC.emojidef = emojidefs[idxpath]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

