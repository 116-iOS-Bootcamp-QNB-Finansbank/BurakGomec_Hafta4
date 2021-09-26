//
//  TransitiveCollectionViewCell.swift
//  BasicUIComponents
//
//  Created by Burak on 26.09.2021.
//

import UIKit

class TransitiveCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func configureCell(image: UIImage){
        self.imageView.image = image
    }
}
