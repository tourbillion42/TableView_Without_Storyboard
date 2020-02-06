//
//  ViewController.swift
//  TableView_Without_Storyboard
//
//  Created by Hwang on 2020/02/07.
//  Copyright © 2020 Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView!
    var tablData = ["intuitive","correspond","dedicate","delicate","intrinsic"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.backgroundColor = .white
        tableView.contentInset.top = 40
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myTable")
        view.addSubview(tableView)
            
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTable", for: indexPath)
        
        cell.textLabel?.text = "\(tablData[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tablData.count
    }
}

