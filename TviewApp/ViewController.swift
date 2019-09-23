//
//  ViewController.swift
//  TviewApp
//
//  Created by nsn on 9/23/19.
//  Copyright © 2019 nex sn. All rights reserved.
//

import UIKit
//import CTableViewCell

class ViewController: UITableViewController {

    var values:Array = [("john11", "xx102 West Drive"), ("john222", "yyy102 West Drive"), ("john3333", "zzzz102 West Drive")]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.tableView.register(UINib(nibName: "CTableViewCell", bundle: nil), forCellReuseIdentifier: "CCell")
        self.tableView.reloadData()

    }

    // MARK: - Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CCell", for: indexPath) as! CTableViewCell

        cell.leftLabel.text = values[indexPath.row].0
        cell.rightLabel.text = values[indexPath.row].1
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
}

