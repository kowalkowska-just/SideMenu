//
//  SettingsModel.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 04/11/2020.
//

import UIKit

enum SettingsSection: Int, CaseIterable, CustomStringConvertible {
    case Social
    case Communication
    
    var description: String {
        switch self {
        case .Social: return "Social"
        case .Communication: return "Communication"
        }
    }
}

