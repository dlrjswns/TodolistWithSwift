//
//  TableViewController.swift
//  Todolist
//
//  Created by 이건준 on 2021/10/02.
//

import UIKit

private let reusableIdentifier = "cell"
class TableViewController:UITableViewController{
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureComponents()
    }
    
    
    //MARK: Configure Components
    func configureComponents(){
        tableView.register(TableCell.self, forCellReuseIdentifier: reusableIdentifier)
    }
    
}
extension TableViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath) as! TableCell
        return cell
    }
}
