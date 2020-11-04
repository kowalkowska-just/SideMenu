//
//  SettingsController.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 03/11/2020.
//

import UIKit

private let reuseIdentifier = "SettingsCell"

class SettingsController: UIViewController{
    
    //MARK: - Properties
    
    var tableView: UITableView!
    var userInfoHeader: UserInfoHeader!
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureUI()
    }
    
    //MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - Helper Functions
        
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
        
        tableView.register(SettingsCell.self, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(tableView)
        tableView.frame = view.frame
        
        let frame = CGRect(x: 0, y: 88, width: view.frame.width, height: 100)
        userInfoHeader = UserInfoHeader(frame: frame)
        tableView.tableHeaderView = userInfoHeader
        tableView.tableFooterView = UIView()
    }
    
    func configureUI() {
        configureTableView()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        navigationItem.title = "Settings"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(handleDismiss))
        navigationItem.leftBarButtonItem?.tintColor = .white
    }

}

extension SettingsController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! SettingsCell
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
        
}
