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
    
    var emojis : [Emoji] = []
    var idxpath :Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Look to this viewController
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Returns the number of emojis in array
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        idxpath = indexPath.row
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    //this is the last function that runs before segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //constant to hold next ViewController
        let detailVC = segue.destination as! DetailViewController
        detailVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // return an array of Emoji objects
    func makeEmojiArray() -> [Emoji] {
        var emojis = ["😀","🤡","🐶","🌪","🍺","💩"]
        var emojiDefs = ["smiley face","silly clown","cute puppy","large tornado","pint of beer","pile of poo"]
        var emojiCats = ["Smileys & People","Smileys & People","Animals & Nature","Animals & Nature","Food & Drink","Smileys & People"]
        var emojiBirthYears = [2009,2010,2011,2012,2013,2014]
        
        let emoji0 = Emoji()
        emoji0.stringEmoji = emojis[0]
        emoji0.definition = emojiDefs[0]
        emoji0.category = emojiCats[0]
        emoji0.birthYear = emojiBirthYears[0]
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = emojis[1]
        emoji1.definition = emojiDefs[1]
        emoji1.category = emojiCats[1]
        emoji1.birthYear = emojiBirthYears[1]
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = emojis[2]
        emoji2.definition = emojiDefs[2]
        emoji2.category = emojiCats[2]
        emoji2.birthYear = emojiBirthYears[2]
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = emojis[3]
        emoji3.definition = emojiDefs[3]
        emoji3.category = emojiCats[3]
        emoji3.birthYear = emojiBirthYears[3]
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = emojis[4]
        emoji4.definition = emojiDefs[4]
        emoji4.category = emojiCats[4]
        emoji4.birthYear = emojiBirthYears[4]
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = emojis[5]
        emoji5.definition = emojiDefs[5]
        emoji5.category = emojiCats[5]
        emoji5.birthYear = emojiBirthYears[5]
        
        return [emoji0,emoji1,emoji2,emoji3,emoji4,emoji5]
    }
    
}

