//
//  MapViewController1.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/9.
//

import UIKit
import CoreLocation

class MapVC1: UIViewController, CLLocationManagerDelegate {

    let lm = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lm.requestWhenInUseAuthorization()
        lm.requestAlwaysAuthorization()
        
        lm.delegate = self
        lm.startUpdatingLocation()
        print("開始定位使用者位置")
            }
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
                if let location = locations.first{
                    print("經度：\(location.coordinate.longitude)")
                    print("緯度：\(location.coordinate.latitude)")
                    print("高度：\(location.altitude)")
    
        lm.stopUpdatingLocation()
        print("停止定位使用者位置")
        }
        
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
