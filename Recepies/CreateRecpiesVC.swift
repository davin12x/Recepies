//
//  CreateRecpiesVC.swift
//  Recepies
//
//  Created by Lalit on 2016-01-20.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit
import CoreData

class CreateRecpiesVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var recipeTitle:UITextField!
    @IBOutlet weak var recipeIngredients:UITextField!
    @IBOutlet weak var recipeSteps:UITextField!
    @IBOutlet weak var recipeImage:UIImageView!
    @IBOutlet weak var addRecipeButton:UIButton!
    
    
    var imagePicker : UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        recipeImage.layer.cornerRadius = recipeImage.frame.width / 2
        recipeImage.clipsToBounds = true
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        recipeImage.image = image
    }
    
    @IBAction func addImage(sender:AnyObject!){
        presentViewController(imagePicker, animated: true, completion: nil)
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func createRecipe(sender:AnyObject){
        if let title = recipeTitle.text where title != ""{
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Recipe", inManagedObjectContext: context)!
            let recipe = Recipe(entity: entity , insertIntoManagedObjectContext: context)
            recipe.title = recipeTitle.text
            recipe.ingredients = recipeIngredients.text
            recipe.steps = recipeSteps.text
            recipe.setRecpieImage(recipeImage.image!)
            context.insertObject(recipe)
            do {
                try context.save()
            }catch{
                print("Could Not Save Recpie")
            }
            self.navigationController?.popViewControllerAnimated(true)
        }
    }

   

}
