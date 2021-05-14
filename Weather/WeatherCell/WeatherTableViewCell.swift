//
//  WeatherTableViewCell.swift
//  Weather
//
//  Created by user196873 on 5/13/21.
//

import UIKit


class WeatherTableViewCell: UITableViewCell {
    
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var highTempLabel: UILabel!
    @IBOutlet var lowTempLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static let identifier = "WeatherTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "WeatherTableViewCell", bundle: nil)
    }
    
    func configure(with model: DailyWeatherEntry){
        self.highTempLabel.textAlignment = .center
        self.lowTempLabel.textAlignment = .center
        
        self.lowTempLabel.text = "\(Int(model.temperatureLow))º"
        self.highTempLabel.text = "\(Int(model.temperatureHigh))º"
        self.dayLabel.text = getDayForDate(Date(timeIntervalSince1970: Double(model.time)))
        self.iconImageView.contentMode = .scaleAspectFit
        
        let icon = model.icon.lowercased()
        
        if icon.contains("clear"){
            self.iconImageView.image = UIImage(named: "clear")
        }else if icon.contains("rain"){
            self.iconImageView.image = UIImage(named: "rain")
        }else{
            self.iconImageView.image = UIImage(named: "cloud")
        }
        
        
        
    }
    
    func getDayForDate(_ date: Date?) -> String {
        guard  let inputdate = date  else {
            return ""
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE" //Monday
        return formatter.string(from: inputdate)
     }
}

