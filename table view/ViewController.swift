//
//  ViewController.swift
//  table view
//
//  Created by Mac on 07/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var table1: UITableView!
    var roono = ["1","2","3","4","5","6"]
    var name = ["Swapnil","Amit","Shailesh","ranjeet","nikhil","abhishek"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roono.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = roono[indexPath.row]
        cell?.detailTextLabel?.text = name[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let second = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        self.navigationController?.pushViewController(second, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        table1.delegate = self
        table1.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

