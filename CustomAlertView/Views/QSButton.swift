//
//  QSButton.swift
//  CustomAlertView
//
//  Created by MMG on 2018-01-31.
//  Copyright © 2018 dluque. All rights reserved.
//

import UIKit

class QSButton: UIButton {
    private class func createButton(title: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 1
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 19)
        button.setTitle(title, for: .normal)
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.setTitleColor(.lightGray, for: .normal)

        
        return button
    }
    
    private class func createColorButton(title: String, resizable: Bool) -> UIButton {
        let button = resizable ? createButton(title: title) : getButton(title: title)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.backgroundColor = UIColor.red.cgColor
        button.layer.borderColor = UIColor.clear.cgColor

        return button
    }
    
    class func getButton(title: String) -> UIButton {
        let button = createButton(title: title)
        button.widthAnchor.constraint(equalToConstant: 88).isActive = true
        button.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        return button
        
    }
    
    class func getResizableButton(title: String) -> UIButton {
        let button = createButton(title: title)
        button.addSidePadding()

        return button
    }
    
    class func getColorButton(title: String) -> UIButton {
        return createColorButton(title: title, resizable: false)
    }
    
    class func getResizableColorButton(title: String) -> UIButton {
        let button = createColorButton(title: title, resizable: true)
        button.addSidePadding()

        return button
    }
    
    class func getBottomScreenwideButton(title: String, view: UIView) -> UIButton {
        let buttonHeight: CGFloat = 50
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle(title, for: .normal)
        view.addSubview(button)
        
        button.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        button.leftAnchor.constraint(equalTo: view.safeLeftAnchor).isActive = true
        button.rightAnchor.constraint(equalTo: view.safeRightAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeBottomAnchor).isActive = true

        return button
    }
}
