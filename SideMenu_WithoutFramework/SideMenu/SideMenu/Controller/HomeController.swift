//
//  HomeController.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 03/11/2020.
//

import  UIKit

class HomeController: UIViewController {
    
    //MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigarionBar()
    }
    
    //MARK: - Handlers
    
    @objc func handleMenuTaggle() {
        delegate?.handleMenuTaggle(forMenuOption: nil)
        
    }
    
    func configureNavigarionBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        
        
        navigationItem.title = "SideMenu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "sidebar.left"), style: .plain, target: self, action: #selector(handleMenuTaggle))
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
}
