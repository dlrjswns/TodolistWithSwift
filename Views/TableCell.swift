//
//  TableCell.swift
//  Todolist
//
//  Created by 이건준 on 2021/10/02.
//

import UIKit

class TableCell:UITableViewCell{
    
    lazy var planLabel:UILabel = {
        let label = UILabel()
        return label
    }()
    
    var item:String?{
        didSet{
            planLabel.text = item
        }
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Configure Components
    func configureComponents(){
        addSubview(planLabel)
        planLabel.translatesAutoresizingMaskIntoConstraints = false
        planLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
