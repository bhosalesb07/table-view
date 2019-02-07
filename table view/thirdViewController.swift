//
//  thirdViewController.swift
//  table view
//
//  Created by Mac on 07/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController{
    
    var selimg : UIImage!
    var selrno :String!
    var selname :String!
    
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var lblrn3: UILabel!
    @IBOutlet weak var lblname3: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        lblrn3.text = selrno
        lblname3.text = selname
        img3.image = selimg
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    
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
