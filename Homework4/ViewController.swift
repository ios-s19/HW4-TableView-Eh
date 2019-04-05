//
//  ViewController.swift
//  Homework4
//
//  Created by Eh Hser on 4/5/19.
//  Copyright © 2019 Acer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let cities: [String] = ["Dubai", "London", "NewYork", "Paris", "Tokyo", "Zurich", "Munich"]
    let cellReuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MyCustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MyCustomCell
        
        // popolute each text and image view
        cell.myTitle.text = self.cities[indexPath.row]
        cell.myImage.image = UIImage(named: cities[indexPath.row] + ".jpg")
        print("my text :  \(self.cities[indexPath.row])")
        return cell
    }


}

