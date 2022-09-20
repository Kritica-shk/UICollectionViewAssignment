//
//  SecondViewController.swift
//  CollectionViewAssignment
//
//  Created by EKbana on 20/09/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgSecond: UIImageView!
    var img: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgSecond.image = img
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
