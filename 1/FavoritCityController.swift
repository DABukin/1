//
//  1TableViewController.swift
//  1
//
//  Created by Дмитрий Алексеевич on 14.04.2022.
//

import UIKit

let cities = [
    City(image: UIImage.init(systemName: "circle.dashed"),name: "Москва"),
    City(image: UIImage.init(systemName: "pencil.and.outline"),name: "Питер"),
    City(image: UIImage.init(systemName: "paperplane"),name: "Екат"),
    City(image: UIImage.init(systemName: "person.icloud"),name: "Казань"),
    City(image: UIImage.init(systemName: "house"),name: "Орехово-Зуево"),
    City(image: UIImage.init(systemName: "car.fill"),name: "Люберцы"),
    City(image: UIImage.init(systemName: "textformat"),name: "Балашиха"),
    City(image: UIImage.init(systemName: "hare"),name: "Реутов"),
    City(image: UIImage.init(systemName: "radio"),name: "Северный"),
    City(image: UIImage.init(systemName: "ferry"),name: "Ницца"),

]






class FavoritCityController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        
        // после return можно поставить количество или написать как ниже
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as? CityCell else {
            preconditionFailure("Error cell")
        }
        // вывод строк по name
        cell.CityNameLabel.text = cities[indexPath.row].name
        
        
        
        //вывод картинок
        cell.CityImageView.image = cities[indexPath.row].image
        
        
        // Configure the cell...

        //print(indexPath.section)
        //print(indexPath.row)
        
        
        
        
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
