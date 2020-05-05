//
//  VentTrackVC.swift
//  BPT_TableView
//
//  Created by Basith on 23/03/20.
//  Copyright © 2020 Agaze. All rights reserved.
//

import Foundation
import UIKit

class VentTrackVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
    }
}



extension VentTrackVC : UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theAppModel.sharedInstance.collectionData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userVentCell", for: indexPath) as! VentTrackCell
        cell.numberLabel.text = "\(indexPath.row+1)"
        cell.imageView?.image = theAppModel.sharedInstance.collectionData[indexPath.row].getventImage()
        return cell
    }
}


class VentTrackCell : UITableViewCell {
    @IBOutlet weak var ventLabel: UILabel!
    @IBOutlet weak var ventTitle: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var image_view: UIImageView!
}


