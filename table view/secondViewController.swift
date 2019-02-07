//
//  secondViewController.swift
//  table view
//
//  Created by Mac on 07/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var table2: UITableView!
    
    var roono = ["1","2","3","4","5","6"]
    var name = ["Swapnil","Amit","Shailesh","ranjeet","nikhil","abhishek"]
    var img = [#imageLiteral(resourceName: "rabbit"),#imageLiteral(resourceName: "dog"),#imageLiteral(resourceName: "tiger"),#imageLiteral(resourceName: "elephant"),#imageLiteral(resourceName: "horse"),#imageLiteral(resourceName: "cat")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roono.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:secondTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! secondTableViewCell 
        cell.img.image = img[indexPath.row]
        cell.lbl1.text = name[indexPath.row]
        cell.lbl2.text = roono[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let third:thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as! thirdViewController
        third.selimg = img[indexPath.row]
        third.selname = name[indexPath.row]
        third.selrno = roono[indexPath.row]
        self.navigationController?.pushViewController(third, animated: true)
      
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            self.img.remove(at: indexPath.row)
              self.roono.remove(at: indexPath.row)
              self.name.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        table2.dataSource = self
        table2.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
