//
//  Annoucement.swift
//  Task2
//
//  Created by Suresh Kansujiya on 27/09/16.
//  Copyright © 2016 Suresh Kansujiya. All rights reserved.
//

import UIKit

class Annoucement: NSObject {

    var ANNOUNCEMENT_ID = ""
    var NATIVE_DATE = ""
    var ANNOUNCEMENT_DATE = ""
    var EXPIRY = ""
    var ANNOUNCEMENT_DESCRIPTION = ""
    var ANNOUNCEMENT_TITLE = ""
    var ANNOUNCEMENT_IMAGE = ""
    var ANNOUNCEMENT_IMAGE_THUMBNAIL = ""
    var ANNOUNCEMENT_HTML = ""
   
    
    func hardProcessingWithString(url: String, completion: (result: NSArray) -> Void) {
        
        if Reachability.isConnectedToNetwork()
        {
            Service.instance.GETREQUEST(url,parameters: nil, headers: nil)
            {
                (success, responseArray, error) -> () in
                if success == true
                {
                    let listArray : NSMutableArray? = NSMutableArray.init(array: responseArray!)
                    if listArray?.count > 0
                    {
                        completion(result: self.createListModelArray(listArray!))
                    }
                }
                else
                {
                    print("Oops! Something went wrong")
                }
            }
        }
    }
    
    /*create data model Array*/
    
    func createListModelArray(arrList : NSMutableArray) -> NSMutableArray {
        
        let  arrListModel : NSMutableArray = NSMutableArray()
        for dict in arrList {
            arrListModel.addObject(setModelKeyValue(dict as! NSDictionary))
        }
        return arrListModel
    }
    
     /*set value in model*/
    
    func setModelKeyValue(dict : NSDictionary)-> Annoucement {
        let announcement = Annoucement()
        announcement.ANNOUNCEMENT_ID = dict.valueForKey("ID") as! String
        announcement.ANNOUNCEMENT_DATE = dict.valueForKey("ANNOUNCEMENT_DATE") as! String
        announcement.ANNOUNCEMENT_TITLE = dict.valueForKey("ANNOUNCEMENT_TITLE") as! String
        announcement.ANNOUNCEMENT_HTML = dict.valueForKey("ANNOUNCEMENT_HTML") as! String
        return announcement
        
    }
    
}
