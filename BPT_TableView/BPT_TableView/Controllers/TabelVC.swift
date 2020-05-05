//
//  TabelVC.swift
//  BPT_TableView
//
//  Created by Basith on 24/03/20.
//  Copyright © 2020 Agaze. All rights reserved.
//

import UIKit
import RoundedViews

class TabelVC: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var pageTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.rowHeight = UITableView.automaticDimension
        tblView.estimatedRowHeight = 600
//        setBackgroundColor(color: UIColor.red)  // add this for background color
        setPageTitle(titleString: "VENT VIEW")
    }
}


extension TabelVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theAppModel.sharedInstance.collectionData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath) as! TbaleCell
//        cell.setBackgroundColor(color: UIColor.red) // add this for background color
        if theAppModel.sharedInstance.collectionData[indexPath.row].getventImage() == nil {
            cell.imgHeightConstraint.constant = 0.0

        }else {
            setImageToVent(view: cell.img, image: theAppModel.sharedInstance.collectionData[indexPath.row].getventImage()!)
        }
        
        setTextToLabel(label: cell.lbl, text: theAppModel.sharedInstance.collectionData[indexPath.row].getventText())
//        hideView(view: cell.imgIcon) //if you dont want the rounded image
        setRoundedImageInView(view: cell.imgIcon, image: UIImage(named: "img2")!)
//        hideView(view: cell.statusView) // if you dont want the status view
        
        
        cell.imgIcon.tag = indexPath.row
        cell.imgIcon.addTarget(self, action: #selector(respondToTapGesture(_:)), for: .touchUpInside)
        return cell
    }
    @objc func respondToTapGesture(_ sender: UIButton){ 
        switch sender.tag {
        case 0:
            action1()
        case 1:
            action2()
        case 2:
            action3()
        default:
            actionDefault()
        }
    }
}


class TbaleCell : UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var imgIcon: RoundedButton!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var imgHeightConstraint: NSLayoutConstraint!
}

extension TabelVC{
    func setBackgroundColor(color : UIColor){
        self.view.backgroundColor = color
        self.tblView.backgroundColor = color
    }
    
    func setPageTitle(titleString : String){
        self.pageTitle.text = titleString
    }
    
    func action1(){
        //do something
        print("action1")
    }
    func action2(){
        //do something
        print("action2")
    }
    func action3(){
        //do something
        print("action3")
    }
    func actionDefault(){
        //do something
        print("actionDefault")
    }
}

extension UIViewController{
    func setRoundedImageInView(view : RoundedButton, image : UIImage){
        view.setImage(image, for: .normal)
    }
    func setTextToLabel(label:UILabel,text:String){
        label.text = text
    }
    func setImageToVent(view:UIImageView,image:UIImage){
        view.image = image
    }
    func hideView(view : UIView){
        view.isHidden = true
    }
    func unHideView(view: UIView){
        view.isHidden = false
    }
}
