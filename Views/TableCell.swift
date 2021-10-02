//
//  TableCell.swift
//  Todolist
//
//  Created by 이건준 on 2021/10/02.
//

import UIKit

class TableCell:UITableViewCell{
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Configure Components
    func configureComponents(){
        
    }
}
