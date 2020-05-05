//
//  Extentions.swift
//  BPT_TableView
//
//  Created by Basith on 23/03/20.
//  Copyright © 2020 Agaze. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    
    func setBackgroundColor(color : UIColor){
        self.contentView.backgroundColor = color
    }
    
    func hideView(view : UIView){
        view.isHidden = true
    }
    
    func showView(view : UIView){
        view.isHidden = false
    }
}

extension UITableView {
 
    func removeBottomSeparatorLine() {
        tableFooterView = UIView(frame: CGRect.zero)
    }
    
    func scrollToLastRowOfSection(section: Int, atScrollPosition: UITableView.ScrollPosition = .top, animated: Bool = false) {
        scrollToRow(at: lastRowInSection(section: section) as IndexPath, at: atScrollPosition, animated: animated)
    }

    private func lastRowInSection(section: Int) -> NSIndexPath {
        guard let dataSource = dataSource else {
            preconditionFailure("Don't have dataSource")
        }
        return NSIndexPath(row: dataSource.tableView(self, numberOfRowsInSection: section) - 1, section: section)
    }
}
