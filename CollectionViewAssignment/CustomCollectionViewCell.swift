//
//  CustomCollectionViewCell.swift
//  CollectionViewAssignment
//
//  Created by EKbana on 19/09/2022.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier = "CustomCollectionViewCell"
    
        static func nib() -> UINib {
            return UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(with image: UIImage) {
        imageView.image = image
    } 

}
