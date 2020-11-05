//
//  Protocols.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 03/11/2020.
//

protocol HomeControllerDelegate {
    
    func handleMenuTaggle(forMenuOption menuOption: MenuOption?)
}

protocol SectionType: CustomStringConvertible {
    
    var constainsSwitch: Bool { get }
}
