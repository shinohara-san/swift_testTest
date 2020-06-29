//
//  ViewController.swift
//  TestPractice
//
//  Created by Yuki Shinohara on 2020/06/29.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var rowNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print(2.square())
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return rowNum
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath)
        cell.textLabel?.text = "No. \(indexPath.row + 1)"
        return cell
       }
    
    @IBAction func buttonTapped(_ sender: Any) {
        rowNum = 10
        table.reloadData()
    }
    

}

extension Int {
    func square() -> Int{
        return self * self
    }
}
