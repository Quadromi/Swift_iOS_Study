//
//  CountryTableViewController.swift
//  Country List
//
//  Created by 황정현 on 2021/09/19.
//

import UIKit

class CountryTableViewController: UITableViewController {

    let flags = ["🇰🇷", "🇬🇧", "🇩🇰", "🇬🇷", "🇫🇷"]; //Emoji: Control + Command + Spacebar
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //How many rows are there?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flags.count;
    }

    // What is each particular item?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)

        cell.textLabel?.text = flags[indexPath.row];

        return cell
    }
}
