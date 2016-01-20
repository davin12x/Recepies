//
//  Recipe.swift
//  Recepies
//
//  Created by Lalit on 2016-01-20.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Recipe: NSManagedObject {


    func setRecpieImage(img:UIImage){
        let data = UIImagePNGRepresentation(img)
        self.images = data
    }
    func getRecpieImage()->UIImage{
        let img = UIImage(data: self.images!)!
        return img
    }

}
