//
//  PhotoCollectionViewCell.swift
//  Photorama
//
//  Created by Calum Maclellan on 05/08/2016.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    func updateWithImage(image: UIImage?){
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        }
        else{
            spinner.startAnimating()
            imageView.image = nil
        }
    }
    
    override func awakeFromNib(){
        super.awakeFromNib()
        updateWithImage(nil)
    }
    
    override func prepareForReuse(){
        super.prepareForReuse()
        
        updateWithImage(nil)
    }
}
