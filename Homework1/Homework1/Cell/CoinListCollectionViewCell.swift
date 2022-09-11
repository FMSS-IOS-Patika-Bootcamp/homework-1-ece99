//
//  CoinListCollectionViewCell.swift
//  Homework1
//
//  Created by Ece Ayvaz on 11.09.2022.
//

import UIKit

class CoinListCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var expandedName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var rank: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(model : CoinElement){
        
        image.image = UIImage(named: "coin")
        name.text = model.shortName
        expandedName.text = model.name
        rank.text = "\(model.rank)%"
        price.text = model.price
    }

}
