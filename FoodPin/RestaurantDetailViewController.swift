//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Chung-Chan Wu on 2017/8/9.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet var tableview:UITableView!
    
    // to unwind segue (but no one fill the spot?) <- Yes, we connect it with a close segue connection in Interface Builder
    @IBAction func close(segue:UIStoryboardSegue) {
    
    }
    
    @IBAction func ratingButtonTapped(segue:UIStoryboardSegue) {
        
        if let rating = segue.identifier {
            restaurant.isVisited = true
            
            switch rating {
            case "great":
                restaurant.rating = "Absolutely!"
            case "good":
                restaurant.rating = "Pretty Good."
            case "dislike":
                restaurant.rating = "Dislike"
            default:
                break
            }
        }
        
        tableview.reloadData() // reload data!! inform view to change items to display
    }

    var restaurant: Restaurant!
    //var restaurantImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //if restaurant.image != nil {
        restaurantImageView.image = UIImage(named: restaurant.image)
        tableview.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        tableview.tableFooterView = UIView(frame: CGRect.zero)
        tableview.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        
        // Enable self sizing cell.
        tableview.estimatedRowHeight = 36.0 // estimated row height
        tableview.rowHeight = UITableViewAutomaticDimension // change property of rowheight to Auto dimension
        
        title = restaurant.name
        navigationController?.hidesBarsOnSwipe = false

        //}
//        restaurantNameLabel.text = restaurant.name
//        restaurantLocationLabel.text = restaurant.location
//        restaurantTypeLabel.text = restaurant.type
//        //restaurantName
    }
    
    // override "veiewWillAppear"
    // called when a view is about to display.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // set to false because we don't need hide it at detail view.
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4 // hard code?
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
        
        // config cell
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 3:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before. \(restaurant.rating)" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        
        // config cell
        cell.backgroundColor = UIColor.clear
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showReview" {
            let destinationController = segue.destination as! ReviewViewController
            destinationController.restaurantImageName = restaurant.image
        }
    }


}
