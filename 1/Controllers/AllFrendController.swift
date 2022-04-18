//
//  1ViewController.swift
//  1
//
//  Created by Дмитрий Алексеевич on 14.04.2022.
//

import UIKit

class AllFrendViewController: UIViewController {

    @IBOutlet var tableView: UITableView! {
   
    didSet {
        tableView.dataSource = self
    }}
    let frends = [
        Frend(image: UIImage.init(systemName: "circle.dashed"),name: "Саша"),
        Frend(image: UIImage.init(systemName: "pencil.and.outline"),name: "Евгений"),
        Frend(image: UIImage.init(systemName: "paperplane"),name: "Сергей"),
        Frend(image: UIImage.init(systemName: "person.icloud"),name: "Дмитрий"),
        Frend(image: UIImage.init(systemName: "house"),name: "Олег"),
        Frend(image: UIImage.init(systemName: "car.fill"),name: "Антон"),
        Frend(image: UIImage.init(systemName: "textformat"),name: "Татьяна"),

    ]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
}


extension AllFrendViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        frends.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicFrendCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = frends[indexPath.row].name
        content.image = frends[indexPath.row].image
        
        cell.contentConfiguration = content
        
        
        
        return cell
    }

}
