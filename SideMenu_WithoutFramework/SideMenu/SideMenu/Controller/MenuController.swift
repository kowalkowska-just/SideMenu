//
//  MenuController.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 03/11/2020.
//

import  UIKit

private let reuseIdentifier = "MenuOptionCell"

class MenuController: UIViewController {
    
    //MARK: - Properties
    
    var tableView: UITableView!
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    //MARK: - Handlers
        
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = UIColor.darkGray
        tableView.separatorStyle = .none
        tableView.rowHeight = 90
    
        
        view.addSubview(tableView)
        //constraints tableView
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true

    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MenuOptionCell
        return cell
    }
    
}
