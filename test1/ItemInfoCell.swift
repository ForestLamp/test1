//
//  TableViewCell.swift
//  test1
//
//  Created by a_sid on 24.01.2021.
//

import UIKit


struct ItemInfoModel {
    let imageName: String
    let heading: String
    let details: String
    let price: Int
    let spaceHack: String
    let symboolRub: String
}

class ItemInfoCell: UITableViewCell {
    

    @IBOutlet weak var pikch: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet var backgroundViewCell: UIView!
    
    
    @IBOutlet var selectionButton: UIButton!

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        backgroundViewCell.layer.cornerRadius = 8
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        selectionButton.isHidden = !selected
    }
    
    
    func configure(_ item: ItemInfoModel) {
        pikch.image = UIImage(named: item.imageName)
        labelName.text  = item.heading
        labelText.text = item.details
        labelPrice.text = String(item.price) + item.spaceHack + item.symboolRub
    }
    
    
}
