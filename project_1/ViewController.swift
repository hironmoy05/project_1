//  ViewController.swift
//  project_1
//
//  Created by Gaurav Sara on 10/08/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var imageTitles = Array(repeating: "Playlist Name", count: 30)
    var imageSubTitles = Array(repeating: "231 items", count: 30)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myCollectionView.register(UINib(nibName: "ListCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "listViewCell")
        
        self.myCollectionView.backgroundColor = UIColor.systemGray6
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imageTitles.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let listCell = collectionView.dequeueReusableCell(withReuseIdentifier: "listViewCell", for: indexPath) as? ListCollectionViewCell else {
            return ListCollectionViewCell()
        }
        
        listCell.title = imageTitles[indexPath.row]
        listCell.subTitle = imageSubTitles[indexPath.row]
    
        return listCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.bounds.width, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: "UICollectionElementKindSectionHeader", withReuseIdentifier: "headerView", for: indexPath)
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionHeadersPinToVisibleBounds = true
            
        }
    
        return headerView
    }
}
