//
//  ViewController.swift
//  WebViewTest
//
//  Created by Fateme' Kazemi on 7/28/1397 AP.
//  Copyright © 1397 Fateme' Kazemi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var btLeft: UIButton!
    @IBOutlet var btRight: UIButton!
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let url = URL(string: "https://www.google.com/search?q=google+translate&oq=&sourceid=chrome&ie=UTF-8")
        let request = URLRequest(url: url!)
        webView.load(request)
        webView.navigationDelegate = self
    }
    

    @IBAction func onBack(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func onForward(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.btLeft.isEnabled = webView.canGoBack
        self.btRight.isEnabled = webView.canGoForward
    }

}

