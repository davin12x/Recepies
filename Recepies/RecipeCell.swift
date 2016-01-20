//
//  RecpieCell.swift
//  Recepies
//
//  Created by Lalit on 2016-01-20.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func configureCell(recipe:Recipe){
        recipeTitle.text = recipe.title
        recipeImage.image = recipe.getRecpieImage()
    }

   

}
