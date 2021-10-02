//
//  RootViewController.swift
//  Todolist
//
//  Created by 이건준 on 2021/10/03.
//

import UIKit

class RootViewController:UIViewController{
    
    lazy var titleLabel:UILabel={
       let label = UILabel()
        label.text = "Jun Todolist"
        label.font = .italicSystemFont(ofSize: 50)
        return label
    }()
    
    lazy var showListBtn:UIButton={
        let button = UIButton(type: .system)
        button.setTitle("나만의 Todolist", for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBackground
        return button
    }()
    
    lazy var editBtn:UIButton={
        let button = UIButton(type: .system)
        button.setTitle("Todolist 작성하기", for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBackground
        button.addTarget(self, action: #selector(whenTapededitBtn), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureComponents()
    }
    
    @objc func whenTapededitBtn(){
        navigationController?.pushViewController(EditViewController(), animated: true)
        
        navigationItem.backButtonTitle = "뒤로가기"
    }
    
    
    func configureComponents(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        view.addSubview(showListBtn)
        showListBtn.translatesAutoresizingMaskIntoConstraints = false
        showListBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showListBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        showListBtn.widthAnchor.constraint(equalToConstant: view.frame.width-40).isActive = true
        showListBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(editBtn)
        editBtn.translatesAutoresizingMaskIntoConstraints = false
        editBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        editBtn.topAnchor.constraint(equalTo: showListBtn.bottomAnchor, constant: 20).isActive = true
        editBtn.widthAnchor.constraint(equalToConstant: view.frame.width-40).isActive = true
        editBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
       
    }
}
