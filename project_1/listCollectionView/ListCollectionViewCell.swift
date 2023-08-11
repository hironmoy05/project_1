//
//  ListCollectionViewCell.swift
//  project_1
//
//  Created by Gaurav Sara on 10/08/23.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var listBackgroundView: UIView!
    @IBOutlet weak var listTitle: UILabel!
    @IBOutlet weak var listSubTitle: UILabel!
    
    var title: String? {
        didSet {
            configuration()
        }
    }
    
    var subTitle: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        listBackgroundView.clipsToBounds = false
        listBackgroundView.layer.borderWidth = 1
        listBackgroundView.layer.borderColor = UIColor.systemGray5.cgColor
        listBackgroundView.layer.cornerRadius = 10
        listBackgroundView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func configuration() {
        guard let title = title else { return }
        guard let subTitle = subTitle else { return }
        
        print(title, "title")
        
        listTitle.text = title
        listSubTitle.text = subTitle
    }

}
