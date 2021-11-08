//
//  MoreTableViewController1.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/8.
//

import UIKit

class MoreTableViewController1: UITableViewController {

    var moreList = [
    ("star.fill", "給好評！"),
    ("square.and.arrow.up", "分享"),
    ("gearshape.fill", "設定"),
    ("envelope.circle.fill", "通知"),
    ("square.and.pencil", "與我們聯絡"),
    ("bicycle", "粉絲頁"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return moreList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.imageView?.image = UIImage(systemName: moreList[indexPath.row].0)
        cell.textLabel?.text = moreList[indexPath.row].1
        
        //cell.accessoryType = .checkmark
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "我是表頭"
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "目前版本"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("我被點選到了")
    }
    
}
