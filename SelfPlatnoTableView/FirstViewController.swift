//
//  ViewController.swift
//  SelfPlatnoTableView
//
//  Created by Valery on 26.08.2024.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    //    private lazy   var imageOfPlace: UIImageView = {
    //
    //          let image = UIImageView()
    //          image.image = UIImage(named: "фото")
    //          image.contentMode = .scaleToFill
    //          image.translatesAutoresizingMaskIntoConstraints = false
    //          image.heightAnchor.constraint(equalToConstant: view.frame.height/4).isActive = true
    //          image.widthAnchor.constraint(equalToConstant: view.frame.height/4).isActive = true
    //          return image
    //      }()
    
    
    var myTableView = UITableView()
    
    let places = Place.restauratnNames
    
    
    //там же создать идентификатор
    let indentifir = "myCell"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        createTable()
        self.myTableView.delegate = self//здесь вью (в данном случае -myTableView) делегирует свои полномочия контроллеру-self/
        self.myTableView.dataSource = self//здесь тоже самое  наше вью будет передавать свои данные через контроллек или точнее будет общаться с логикой (моделью-функции) с помощью контроллера
        // здесь происходит регистрация ячейки; -UITableViewCell.self -здесь обращаемся к нашей таблице с ячейкой и говороим что у надля этой ячейки есть свой indentifir
    }
    
    //method for create tableView
    func createTable(){
        self.myTableView = UITableView(frame: view.bounds, style:.plain)
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: indentifir)
        myTableView.backgroundColor = .yellow
        // растягивает нашу вью по всей площади главного вью
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        //
        //conctrTable()
        view.addSubview(myTableView)
        
        
    }
    func conctrTable(){
        myTableView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
    //Methods DataSours-для  входных данных
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .white
        
        return cell
    }
    
    
}

//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//
//    
//    
//}
