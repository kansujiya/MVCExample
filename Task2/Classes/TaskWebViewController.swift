//
//  TaskWebViewController.swift
//  Task2
//
//  Created by Suresh Kansujiya on 27/09/16.
//  Copyright © 2016 Suresh Kansujiya. All rights reserved.
//

import UIKit

class TaskWebViewController: UIViewController {
    
    /*Create outlet here*/
    
    @IBOutlet weak var webView : UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    
    var htmlString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "DetailsView"
        // Do any additional setup after loading the view.
        
        if let htmlstring = htmlString
        {
            webView.loadHTMLString(htmlstring, baseURL: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TaskWebViewController : UIWebViewDelegate
{
    func webViewDidStartLoad(webView : UIWebView) {
        activityIndicator?.startAnimating()
    }
    
    func webViewDidFinishLoad(webView : UIWebView) {
        activityIndicator?.stopAnimating()
    }
}