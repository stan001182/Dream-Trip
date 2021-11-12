//
//  MoreVC2.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/12.
//

import UIKit

class MoreVC2: UIActivityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let activityViewController = UIActivityViewController(activityItems: ["Share"], applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
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
