//
//  ViewController.swift
//  Task2
//
//  Created by Suresh Kansujiya on 27/09/16.
//  Copyright © 2016 Suresh Kansujiya. All rights reserved.
//

import UIKit

let kListTableCell = "ListTableCell"
let url = "https://www.solutions4mobility.com/AABToyota/ipdp/ipdpb.ashx?CFG=OPTIMAL&p=Common.Announcements&Handler=News&MODULE_ID=501&TemplateName=News.htm&APPLICATION_NAME=TOYOTA&F=J"


class ListViewController: UIViewController {

    /*Create IBOutlet here*/
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    
    /*Create Veraible's here*/
    var arrAnnoucement : NSArray?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /*Setup Intail UI Part*/
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 30
        tableView.rowHeight = UITableViewAutomaticDimension
        
        /*Pass control to Model Class for Data Source*/
        
        let objAnnoucement = Annoucement()
        activityIndicator?.startAnimating()
        
        objAnnoucement.hardProcessingWithString(url) {
            (result: NSArray) in
            print("Model Return: \(result)")
            self.activityIndicator?.stopAnimating()
            
            if result.count > 0
            {
                self.arrAnnoucement = result
                self.tableView.reloadData()
            }
            else
            {
                print("Something went wrong.")
            }
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

