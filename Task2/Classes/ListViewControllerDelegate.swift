//
//  ListViewControllerDelegate.swift
//  Task2
//
//  Created by Suresh Kansujiya on 27/09/16.
//  Copyright © 2016 Suresh Kansujiya. All rights reserved.
//

import UIKit

extension ListViewController : UITableViewDataSource,UITableViewDelegate
{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let arr = arrAnnoucement {
           return arr.count
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier(kListTableCell) as? ListCell
        if cell == nil
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier:kListTableCell) as? ListCell
        }
        cell?.accessoryType = .DisclosureIndicator
        cell?.setDataInCell(arrAnnoucement![indexPath.row] as! Annoucement)
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let identifier = "TaskWebViewController"
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let taskWebCtrl = storyBoard.instantiateViewControllerWithIdentifier(identifier) as! TaskWebViewController
        taskWebCtrl.htmlString = (arrAnnoucement![indexPath.row] as! Annoucement).ANNOUNCEMENT_HTML 
        self.navigationController?.pushViewController(taskWebCtrl, animated: true)
    }
}

