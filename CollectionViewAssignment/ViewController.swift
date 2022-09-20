//
//  ViewController.swift
//  CollectionViewAssignment
//
//  Created by EKbana on 19/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var images: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
        collectionView.showsVerticalScrollIndicator = false
        collectionView.collectionViewLayout = layout
        
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        
        collectionView.register(HeaderCollectionReusableView.nib(), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)

        collectionView.delegate = self
        collectionView.dataSource = self
        images = [.tokyo, .rize, .dazai, .Gojo, .draken, .tobi, .tsuki, .inosuke, .kage, .sukuna]
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
        cell.contentView.backgroundColor = .lightGray
        cell.set(with: images[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width - 3) / 3, height: 200)
     }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
            //        headerCell.backgroundColor = .black
        headerCell.nameLabel.text = "Kritica Shakya"
        headerCell.bioLabel.text = "Intern"
        headerCell.biosLabel.text = "Keep watching me Shut it down"
        headerCell.headerImage.image = UIImage.miya
        headerCell.headerImage.layer.cornerRadius = 40
        headerCell.headerImage.clipsToBounds = true
        headerCell.headerImage.layer.masksToBounds = true
                    return headerCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let stordboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = stordboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.img = images[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
