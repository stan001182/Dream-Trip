//
//  MoreViewController2.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/10.
//

import UIKit

class MoreVC1: UIViewController {

    var aaa: String?
    
    var bbb: UIImage?
    
    @IBOutlet weak var test2: UILabel!
    
    @IBOutlet weak var myview2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        test2.text = aaa
        myview2.image = bbb
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
