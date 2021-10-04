//
//  TableViewController.swift
//  Todolist
//
//  Created by 이건준 on 2021/10/02.
//

import UIKit

private let reusableIdentifier = "cell"
class TableViewController:UITableViewController{
    
    var items:[String?] = []
    
    lazy var rightButton:UIBarButtonItem={
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(rightbtnTapped))
        return button
    }()
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureComponents()
    }
    //MARK: Selector
    @objc func rightbtnTapped(){
        let alert = UIAlertController(title: "ADD", message: "What's your plan? ", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {(textField) in textField.placeholder = "Todolist 입력"})
        
        let positive = UIAlertAction(title: "추가", style: .default, handler: {_ in
            let tf = alert.textFields?[0]
            if let textField = tf?.text, textField != ""{
                self.items.append(textField)
                let indexPath = IndexPath(row: self.items.count-1, section: 0)
                self.tableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            }
        })
        
        let negative = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        alert.addAction(positive)
        alert.addAction(negative)
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    //MARK: Configure Components
    func configureComponents(){
        tableView.register(TableCell.self, forCellReuseIdentifier: reusableIdentifier)
        
        navigationItem.title = "Jun Todolist"
        navigationItem.rightBarButtonItem = rightButton
        
    }
    
    
}
extension TableViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath) as! TableCell
        cell.item = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}
