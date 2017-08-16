//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Chung-Chan Wu on 2017/8/7.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend.jpg", isVisited: false),
        Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei.jpg", isVisited: false),
        Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha.jpg", isVisited: false),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl.jpg", isVisited: false),
        Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster.jpg", isVisited: false),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkeerestaurant.jpg", isVisited: false),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier.jpg", isVisited: false),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery.jpg", isVisited: false),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haighschocolate.jpg", isVisited: false),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palominoespresso.jpg", isVisited: false),
        Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate.jpg", isVisited: false),
        Restaurant(name: "Traif", type: "American", location: "New York", image: "traif.jpg", isVisited: false),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "grahamavenuemeats.jpg", isVisited: false),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "wafflewolf.jpg", isVisited: false),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York",image: "fiveleaves.jpg", isVisited: false),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York",image: "cafelore.jpg", isVisited: false),
        Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional.jpg", isVisited: false),
        Restaurant(name: "Barrafina", type: "Spanish", location: "London", image:"barrafina.jpg", isVisited: false),
        Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia.jpg", isVisited: false),
        Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak.jpg", isVisited: false),
        Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "caskpubkitchen.jpg", isVisited: false)
    ]
    
//    // hold restaurant data
//    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
//    
//    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
//    
//    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
//
//    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    /*
    BUG: I cannot get size value from property ... T_T
    var restaurantCounts: Int {
        return restaurantNames.count
    }

    let arrayCount = restaurantCounts */
    //var restaurantIsVisted = Array(repeating: false, count: 21) // use hard code instead.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UINavigationBar.appearance().barTintColor = UIColor.red
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.hidesBarsOnSwipe = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // override "veiewWillAppear"
    // called when a view is about to display.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // set to true(default value) because we need to reset it when display this view again.
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        // downcasting
        // RestaurantTableViewCell is a child class of UITableViewCell
        // dequeueReusableCell() always returns a UITableViewCell
        // if cell is configured by custom, it could be converted to the specific cell type.
        // use as! if downcasting would perform correctly.
        // use as? to perform an optional downcasting.

        // Configure the cell...
        cell.nameLabel.text = restaurants[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: restaurants[indexPath.row].image)
        cell.locationLabel.text = restaurants[indexPath.row].location
        cell.typeLabel.text = restaurants[indexPath.row].type
        cell.accessoryType = restaurants[indexPath.row].isVisited ? .checkmark : .none

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        // 1. create an option as an action sheet.
//        // preferredStyle -> action sheet / alert
//        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
//        
//        // 2. add actions to the menu.
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        optionMenu.addAction(cancelAction)
//        
//        // 2-1. add a custom action. to call a fake phone number. implement a handler first.
//        let callActionHandler = { (action:UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: "Server Unavailable", message: "Sorry, the call feature is not available yet. Please try later.", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//
//        // 2-2. add call action
//        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
//        optionMenu.addAction(callAction)
//        
//        // 2-3. add another custom action. check-in action.
//        let checkInAction = UIAlertAction(title: "Check in", style: .default, handler:
//        {
//            (action:UIAlertAction!) -> Void in
//            
//            // ???
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//            self.restaurantIsVisted[indexPath.row] = true
//        })
//        
//        // exercise: add an uncheck in option if cell has been checked.
//        let checkOutAction = UIAlertAction(title: "Undo Check in", style: .default, handler:
//        {
//            (action:UIAlertAction!) -> Void in
//            
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .none
//            self.restaurantIsVisted[indexPath.row] = false
//        })
//        
//        self.restaurantIsVisted[indexPath.row] ? optionMenu.addAction(checkOutAction) : optionMenu.addAction(checkInAction)
//        
//        // 3. Display this menu
//        present(optionMenu, animated: true, completion: nil)
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            restaurantNames.remove(at: indexPath.row)
            restaurantLocations.remove(at: indexPath.row)
            restaurantTypes.remove(at: indexPath.row)
            restaurantImages.remove(at: indexPath.row)
            restaurantIsVisted.remove(at: indexPath.row)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        
        //tableView.reloadData()
        tableView.deleteRows(at: [indexPath], with: .fade)
        
        print("Total items: \(restaurantNames.count)")
        for name in restaurantNames {
            print(name)
        }
    }*/
    
    // to handle more swipe in row actions
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        // 1. add a social sharing button
        let shareAction = UITableViewRowAction(style: .default, title: "Share", handler:
        {
            (action, indexPath) -> Void in
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].name
            
            if let imageToShare = UIImage(named: self.restaurants[indexPath.row].image) {
                let activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
                self.present(activityController, animated: true, completion: nil)
            }
        })
        
        // 2. add delete button
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler:
        {
            (action, indexPath) -> Void in
            
            // delete data
            self.restaurants.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        })
        
        shareAction.backgroundColor = UIColor(red: 48.0/255.0, green: 173.0/255.0, blue: 99.0/255.0, alpha: 1.0)
        deleteAction.backgroundColor = UIColor.red
        
        return [shareAction, deleteAction]
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                
                // destination of this segue is "Detail View Controller"
                let destinationController = segue.destination as! RestaurantDetailViewController

                // pass data to destination view controller
                //destinationController. = restaurants[indexPath.row]
                //for name in restaurants {
                    print(restaurants[indexPath.row].image)
                //}
                destinationController.restaurant = restaurants[indexPath.row]
            }
        }
    }

}
