//
//  StoriesTableViewController.swift
//  UITableViewTest
//
//  Created by Dakota Brown on 8/30/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

//the person class to create people
class Person {
    var id : Int
    var title : String
    var text : String
    var image : UIColor
    
    init(id: Int, title: String, text: String, image: UIColor) {
        self.id = id
        self.text = text
        self.title = title
        self.image = image
    }
}

class StoriesTableViewController: UITableViewController {
    
    //an array of people
    var headlines = [
        Person(id: 1, title: "Name: Dakota", text: "Favorite: Pizza", image: UIColor.blue),
        Person(id: 2, title: "Name: Bob", text: "Favorite: Spaghet", image: UIColor.red)
        ]
    
    // MARK: - Table view data source
    
    //tells us how many sections there are
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //tells us how many table view cells there are
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    //creates the table view cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //calls the table view cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath)
        
        let headline = headlines[indexPath.row]
        //creates individual parts of the table view cell
        cell.textLabel?.text = headline.title
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = headline.text
        cell.detailTextLabel?.textColor = UIColor.white
        cell.backgroundColor = headline.image
        
        return cell
    }
    
    
}
