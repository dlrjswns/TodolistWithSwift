//
//  EditViewController.swift
//  Todolist
//
//  Created by 이건준 on 2021/10/03.
//

import UIKit

class EditViewController:UIViewController{
    
    lazy var textField:UITextField={
       let textField = UITextField()
        textField.placeholder = "해야할 일"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        textField.backgroundColor = .systemBackground
        return textField
    }()
    
    lazy var editBtn:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("작성하기", for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureComponents()
    }
    
    func configureComponents(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        

    }
}
