//
//  CustomTableViewCell.swift
//  SelfPlatnoTableView
//
//  Created by Valery on 27.08.2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
      var imageOfPlace: UIImageView = {
       
           let image = UIImageView()
           image.image = UIImage(named: "фото")
           image.contentMode = .scaleToFill
           image.translatesAutoresizingMaskIntoConstraints = false
//           image.heightAnchor.constraint(equalToConstant: view.frame.height/4).isActive = true
//           image.widthAnchor.constraint(equalToConstant: view.frame.height/4).isActive = true
    
           return image
       }()
    
}
