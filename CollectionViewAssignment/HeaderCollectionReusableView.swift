//
//  HeaderCollectionReusableView.swift
//  CollectionViewAssignment
//
//  Created by EKbana on 19/09/2022.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var archiveButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var biosLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var profile: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    static let identifier = "HeaderCollectionReusableView"
    
        static func nib() -> UINib {
            return UINib(nibName: "HeaderCollectionReusableView", bundle: nil)
        }
    
}
