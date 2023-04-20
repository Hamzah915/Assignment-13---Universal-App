//
//  DetailsViewController.swift
//  UniversalApp
//
//  Created by Hamzah Azam on 19/04/2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var item : Product?

    @IBOutlet var idLabel: UILabel!
    @IBOutlet var discountpercentageLabel: UILabel!
    @IBOutlet var imagesLabel: UILabel!
    @IBOutlet var thumbnailLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var brandLabel: UILabel!
    @IBOutlet var stockLabel: UILabel!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let prod = item else {return}
       
            idLabel.text = "Id: \(prod.id)"
            titleLabel.text = "Title: \(prod.title)"
            discountpercentageLabel.text = "Discountpercentage: \(prod.discountPercentage)"
            categoryLabel.text = "Category: \(prod.category)"
            brandLabel.text = "Brand: \(prod.brand)"
            stockLabel.text = "Stock: \(prod.stock)"
            ratingLabel.text = "Rating: \(prod.rating)"
            priceLabel.text = "Price: \(prod.price)"
            thumbnailLabel.text = "Thumbnail: \(prod.thumbnail)"
            imagesLabel.text = "Images: \(prod.images)"
            descriptionLabel.text = "Description: \(prod.description)"
        
       
        
        // Do any additional setup after loading the view.
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
