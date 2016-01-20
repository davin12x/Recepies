//
//  ViewController.swift
//  Recepies
//
//  Created by Lalit on 2016-01-20.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    var recipes = [Recipe]()

    @IBOutlet weak var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            if let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell") as? RecipeCell {
                let recipe = recipes[indexPath.row]
                cell.configureCell(recipe)
                return cell
        }
        else{
            return RecipeCell()
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}

