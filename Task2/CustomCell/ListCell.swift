//
//  ListCell.swift
//  Task2
//
//  Created by Suresh Kansujiya on 27/09/16.
//  Copyright © 2016 Suresh Kansujiya. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    /*create outlet here*/
    
    @IBOutlet weak var lblAnnoucementTitle : UILabel!
    @IBOutlet weak var lblAnnoucementDate : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDataInCell(objAnnoucement : Annoucement) {
        lblAnnoucementTitle.text = objAnnoucement.ANNOUNCEMENT_TITLE
        lblAnnoucementDate.text = objAnnoucement.ANNOUNCEMENT_DATE
    }

}
