//
//  MainTableViewCell.swift
//  AobaHonmoku
//
//  Created by 小川祐都 on 2022/10/29.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var makerLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var withoutTaxPriceLabel: UILabel!
    @IBOutlet weak var inTaxPriceLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
}



// Configure the view for the selected state



