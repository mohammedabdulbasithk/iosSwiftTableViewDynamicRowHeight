//
//  TabelModel.swift
//  BPT_TableView
//
//  Created by Basith on 23/03/20.
//  Copyright © 2020 Agaze. All rights reserved.
//

import Foundation
import UIKit

class TabelModel {
    var ventId : Int  = 0
    var ventImage : UIImage?
    var ventText : String  = ""
    var ventStatus : String  = "NEW"
    var backGroundColor : UIColor = UIColor.red
    init(ventId : Int,ventImage : UIImage?,ventText : String,ventStatus : String,backGroundColor : UIColor) {
        self.ventId = ventId
        self.ventImage = ventImage
        self.ventText = ventText
        self.ventStatus = ventStatus
        self.backGroundColor = backGroundColor
    }
    func getVentId() -> Int {
        return self.ventId
    }
    func setVentId(id : Int){
        self.ventId = id
    }
    func getColor() -> UIColor {
        return self.backGroundColor
    }
    func setColor(id : UIColor){
        self.backGroundColor = id
    }
    func getventStatus() -> String {
        return self.ventStatus
    }
    func setventStatus(url : String){
        self.ventStatus = url
    }
    func getventImage() -> UIImage? {
        if self.ventImage == nil{
            return nil
        }else{
            return self.ventImage!
        }
    }
    func setventImage(url : UIImage){
        self.ventImage = url
    }
    func getventText() -> String {
        return self.ventText
    }
    func setventText(url : String){
        self.ventText = url
    }
}
