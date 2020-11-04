//
//  MenuOption.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 03/11/2020.
//
import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(systemName: "person") ?? UIImage()
        case .Inbox: return UIImage(systemName: "envelope") ?? UIImage()
        case .Notifications: return UIImage(systemName: "bell") ?? UIImage()
        case .Settings: return UIImage(systemName: "gear") ?? UIImage()
        }
    }
}
