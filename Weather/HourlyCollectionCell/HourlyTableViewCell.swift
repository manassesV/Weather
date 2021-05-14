//
//  HourlyTableViewCell.swift
//  Weather
//
//  Created by user196873 on 5/13/21.
//

import UIKit

class HourlyTableViewCell: UITableViewCell{
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //Configure the view for the selected state
        
    }
    
    static let identifier = "HourlyTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "HourlyTableViewCell", bundle: nil)
    }
    
}


