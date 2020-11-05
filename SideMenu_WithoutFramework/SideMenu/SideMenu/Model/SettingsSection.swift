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

enum SocialOptions: Int, CaseIterable, SectionType {
    
    case EditProfile
    case LogOut
    
    var constainsSwitch: Bool { return false }
    
    var description: String {
        switch self {
        case .EditProfile: return "Edit Profile"
        case .LogOut: return "Log Out"
        }
    }
}

enum ComminicationOptions: Int, CaseIterable, SectionType {
    
    case Notifications
    case Email
    case ReportCrashes
    
    var constainsSwitch: Bool {
        switch self {
        case .Notifications: return true
        case .Email: return true
        case .ReportCrashes: return true
        }
    }
    
    var description: String {
        switch self {
        case .Notifications: return "Notifications"
        case .Email: return "Email"
        case .ReportCrashes: return "Report Crashes"
        }
        
    }
}
