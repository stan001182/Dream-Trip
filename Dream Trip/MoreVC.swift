//
//  MoreViewController1.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/9.
//

import UIKit
import MessageUI

class MoreVC: UIViewController, UITableViewDataSource, UITableViewDelegate,MFMailComposeViewControllerDelegate {

    
    //    var moreList = [
    //    ("star.fill", "給好評！"),
    //    ("square.and.arrow.up", "分享"),
    //    ("gearshape.fill", "設定"),
    //    ("envelope.circle.fill", "通知"),
    //    ("square.and.pencil", "與我們聯絡"),
    //    ("fb", "粉絲頁"),
    //    ]
        
    
    var moreList = [
        ("star", "給好評！"),
        ("share", "分享"),
        ("setting", "設定"),
        ("info", "關於"),
        ("contact", "與我們聯絡"),
        ("facebook", "Facebook粉絲頁"),
        ("instagram", "Instagram粉絲頁"),
        ]
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    
         func numberOfSections(in tableView: UITableView) -> Int {
            
            return 1
        }

         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return moreList.count
        }

        
         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            //cell.imageView?.image = UIImage(systemName: moreList[indexPath.row].0)
            cell.imageView?.image = UIImage(named: moreList[indexPath.row].0)
            cell.textLabel?.text = moreList[indexPath.row].1
            
            //cell.accessoryType = .checkmark
             
            return cell
        }
        
         func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "更多項目"
        }
        
         func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            return "目前版本1.0.0"
        }
        
         func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
             if indexPath.row == 1{
                 let textToShare = "我想要與您分享此款好用的APP！!"
                 let imageToShare = UIImage(named: "dog1.jpeg")!
                 let urlToShare = URL(string:"https://www.google.com")!
                 let activityItems:[Any] = [textToShare,imageToShare,urlToShare] //as [Any]
                 //Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional
                 let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
                 self.present(activityViewController, animated: true, completion: nil)
             }
             else if indexPath.row == 4{
                 guard MFMailComposeViewController.canSendMail() else {
                     print("Mail services are not available")
                     return
                 }
                     let composer = MFMailComposeViewController()
                     composer.mailComposeDelegate = self
                     composer.setToRecipients(["dream_trip@gmail.com"])         //收件人
                     composer.setSubject("HI,dream_trip")                          //標題
                     composer.setMessageBody("I wanna travel all over the world ", isHTML: false)  //內容
                 self.present(composer, animated: true)
                 }
             else if indexPath.row == 5{
                 if let url = URL(string:"https://www.facebook.com"){
                     UIApplication.shared.open(url, options: [:], completionHandler: nil)
                 }
             }
             else if indexPath.row == 6{
                 if let url = URL(string:"https://www.instagram.com"){
                     UIApplication.shared.open(url, options: [:], completionHandler: nil)
                 }
             }
             else{
                     self.performSegue(withIdentifier: String(indexPath.row), sender: nil)
                 }
             
             print("點選了第：\(indexPath.row) row")
             print("點選了：\(moreList[indexPath.row].0) ")
             }
    func mailComposeController(
        _ controller: MFMailComposeViewController,
        didFinishWith result: MFMailComposeResult, error: Error?){
            controller.mailComposeDelegate = self
            if let _ = error{
                controller.dismiss(animated: true, completion: nil)
                return
            }
            switch result{
            case .cancelled:
                print("cancelled")
            case .failed:
                print("faild to mail")
            case .saved:
                print("saved")
            case .sent:
                print("sent")
            @unknown default:
                fatalError()
            }
            controller.dismiss(animated: true, completion: nil)
    }
             
        }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == String(0){
//            let MoreVC1 = segue.destination as? MoreVC1
//            MoreVC1?.aaa = test.text
//            MoreVC1?.bbb = myview.image
//            }
//    }
    

       
        
    
