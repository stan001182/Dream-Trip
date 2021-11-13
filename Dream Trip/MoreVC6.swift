//
//  MoreVC6.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/13.
//

import UIKit
import WebKit
class MoreVC6: UIViewController {
    var mWebView: WKWebView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://www.instagram.com/"
        loadURL(urlString: url)
        
    }
    
    private func loadURL(urlString: String) {
        let url = URL(string: urlString)
        if let url = url {
            let request = URLRequest(url: url)
            // init and load request in webview.
            mWebView = WKWebView(frame: self.view.frame)
            if let mWebView = mWebView {
                mWebView.navigationDelegate = self
                mWebView.load(request)
                self.view.addSubview(mWebView)
                self.view.sendSubviewToBack(mWebView)
            }
        }
    }
 
}


extension MoreVC6: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
    }
}
