//
//  ViewController.swift
//  Guillermo's Table View App
//
//  Created by Guillermo Garcia on 8/4/20.
//  Copyright © 2020 Guillermo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let guillermosfavoriteSongs = ["Africa - Toto" , "Hard To Say I'm Sorry - Chicago" , "The Less I Know The Better - Tame Impala" , "You Make Loving Fun - Fleetwood Mac" , "Fifteen Years Ago - Conway Twitty" , "How Deep Is Your Love - Bee Gees" , "New Kid In Town - Eagles" , "Lodi - Creedance Clearwater Revival"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guillermosfavoriteSongs.count
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID1")
        cell?.textLabel?.text = guillermosfavoriteSongs[indexpath.row]
        return cell!
    }
    

}

