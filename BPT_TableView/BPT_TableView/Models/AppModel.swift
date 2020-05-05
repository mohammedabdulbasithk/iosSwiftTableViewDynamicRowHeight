//
//  AppModel.swift
//  BPT_TableView
//
//  Created by Basith on 24/03/20.
//  Copyright © 2020 Agaze. All rights reserved.
//

import Foundation
import UIKit

class theAppModel{
    
    static let sharedInstance = theAppModel()
    var collectionData = [
        TabelModel(ventId: 1200, ventImage: UIImage(named: "img1")!, ventText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore", ventStatus: "NEW", backGroundColor: UIColor.white),
                          TabelModel(ventId: 1200, ventImage: UIImage(named: "img2")!, ventText: "Lorem ipsum dolor sit amet, consectetur", ventStatus: "TRACK", backGroundColor: UIColor.red),
                          TabelModel(ventId: 1200, ventImage: UIImage(named: "img3")!, ventText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis", ventStatus: "DELETED", backGroundColor: UIColor.green),
                          TabelModel(ventId: 1200, ventImage: UIImage(named: "img4")!, ventText: "", ventStatus: "NEW", backGroundColor: UIColor.blue),
                          TabelModel(ventId: 1200, ventImage: UIImage(named: "img5")!, ventText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud", ventStatus: "TRACK", backGroundColor: UIColor.yellow),
                          TabelModel(ventId: 1200, ventImage: nil, ventText: "Lorem ipsum dolor sit", ventStatus: "ABUSE", backGroundColor: UIColor.purple),
                          TabelModel(ventId: 1200, ventImage: UIImage(named: "img3")!, ventText: "Sum sara sel", ventStatus: "NEW", backGroundColor: UIColor.cyan)
    ]
    
    
    
}
