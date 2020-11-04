//
//  SettingsCell.swift
//  SideMenu
//
//  Created by Justyna Kowalkowska on 04/11/2020.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    // MARK: - Properties
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Simple text"
        return label
    }()
    
    var mySwitch: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.tintColor = .black
        return uiSwitch
    }()
    
    
    
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        selectionStyle = .none
        
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints =  false
        descriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        
        addSubview(mySwitch)
        mySwitch.translatesAutoresizingMaskIntoConstraints =  false
        mySwitch.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mySwitch.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        mySwitch.leftAnchor.constraint(equalTo: descriptionLabel.rightAnchor, constant: 12).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
