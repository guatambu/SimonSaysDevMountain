//
//  ViewController.swift
//  SimonSaysDevMountain
//
//  Created by Kelly Johnson on 8/7/18.
//  Copyright © 2018 DunDak, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topLeftButton = UIButton()
    let topRightButton = UIButton()
    let bottomLeftButton = UIButton()
    let bottomRightButton = UIButton()
    let grayView = UIView()
    let displayLabel = UILabel()
    
    let margin: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setUpViews()
    }
    
    func setUpViews() {
        setUpGrayView()
        setUpTopLeftButton()
        setUpTopRightButton()
        setUpBottomLeftButton()
        setUpBottomRightButton()
    }
    
    func setUpGrayView() {
        grayView.backgroundColor = UIColor.gray
        view.addSubview(grayView)
        grayView.translatesAutoresizingMaskIntoConstraints = false
        
        // constraints
        grayView.heightAnchor.constraint(equalToConstant: margin).isActive = true
        grayView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        grayView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        grayView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        displayLabel.text = "Testing"
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        grayView.addSubview(displayLabel)
        
        displayLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
        displayLabel.centerYAnchor.constraint(equalTo: grayView.centerYAnchor).isActive = true
    }
    
    func setUpTopLeftButton() {
        topLeftButton.backgroundColor = UIColor.red
        view.addSubview(topLeftButton)
        topLeftButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: NSLayoutAttribute.left,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: view,
                           attribute: NSLayoutAttribute.left,
                           multiplier: 1,
                           constant: margin).isActive = true
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: NSLayoutAttribute.top,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: view,
                           attribute: NSLayoutAttribute.top,
                           multiplier: 1,
                           constant: margin).isActive = true
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: NSLayoutAttribute.right,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: view,
                           attribute: NSLayoutAttribute.centerX,
                           multiplier: 1,
                           constant: -margin/2).isActive = true
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: NSLayoutAttribute.bottom,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: view,
                           attribute: NSLayoutAttribute.centerY,
                           multiplier: 1,
                           constant: -margin).isActive = true
    }
    
    func setUpTopRightButton() {
        topRightButton.backgroundColor = UIColor.yellow
        view.addSubview(topRightButton)
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: topRightButton,
                           attribute: NSLayoutAttribute.left,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: topLeftButton,
                           attribute: .right,
                           multiplier: 1,
                           constant: margin).isActive = true
        
        NSLayoutConstraint(item: topRightButton,
                           attribute: NSLayoutAttribute.top,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: view,
                           attribute: NSLayoutAttribute.top,
                           multiplier: 1,
                           constant: margin).isActive = true
        
        NSLayoutConstraint(item: topRightButton,
                           attribute: NSLayoutAttribute.right,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: view,
                           attribute: NSLayoutAttribute.right,
                           multiplier: 1,
                           constant: -margin).isActive = true
        
        NSLayoutConstraint(item: topRightButton,
                           attribute: NSLayoutAttribute.bottom,
                           relatedBy: NSLayoutRelation.equal,
                           toItem: topLeftButton,
                           attribute: .bottom,
                           multiplier: 1,
                           constant: 0).isActive = true
    }
    
    func setUpBottomLeftButton() {
        bottomLeftButton.backgroundColor = UIColor.green
        view.addSubview(bottomLeftButton)
        bottomLeftButton.translatesAutoresizingMaskIntoConstraints = false
        
        bottomLeftButton.topAnchor.constraint(equalTo: topLeftButton.bottomAnchor, constant: margin).isActive = true
        
        bottomLeftButton.bottomAnchor.constraint(equalTo: grayView.topAnchor, constant: -margin).isActive = true
        
        bottomLeftButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: margin).isActive = true
        
        bottomLeftButton.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -margin/2).isActive = true
        
        
    
//        let leftConstraint = NSLayoutConstraint(item: bottomLeftButton,
//                           attribute: NSLayoutAttribute.left,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.left,
//                           multiplier: 1,
//                           constant: margin)
//
//        let topConstraint = NSLayoutConstraint(item: bottomLeftButton,
//                           attribute: NSLayoutAttribute.top,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.centerY,
//                           multiplier: 1,
//                           constant: margin/2)
//
//        let rightConstraint = NSLayoutConstraint(item: bottomLeftButton,
//                           attribute: NSLayoutAttribute.right,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.centerX,
//                           multiplier: 1,
//                           constant: -margin/2)
//
//        let bottomConstraint = NSLayoutConstraint(item: bottomLeftButton,
//                           attribute: NSLayoutAttribute.bottom,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.bottom,
//                           multiplier: 1,
//                           constant: margin + margin)
//
//        view.addConstraints([leftConstraint, topConstraint, rightConstraint, bottomConstraint])
    }
    
    func setUpBottomRightButton() {
        bottomRightButton.backgroundColor = UIColor.blue
        view.addSubview(bottomRightButton)
        bottomRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        bottomRightButton.topAnchor.constraint(equalTo: topLeftButton.bottomAnchor, constant: margin).isActive = true
        
        bottomRightButton.bottomAnchor.constraint(equalTo: grayView.topAnchor, constant: -margin).isActive = true
        
        bottomRightButton.leftAnchor.constraint(equalTo: bottomLeftButton.rightAnchor, constant: margin).isActive = true
        
        bottomRightButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -margin).isActive = true
        
//        let leftConstraint = NSLayoutConstraint(item: bottomRightButton,
//                           attribute: NSLayoutAttribute.left,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.centerX,
//                           multiplier: 1,
//                           constant: margin/2)
//
//        let topConstraint = NSLayoutConstraint(item: bottomRightButton,
//                           attribute: NSLayoutAttribute.top,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.centerY,
//                           multiplier: 1,
//                           constant: margin/2)
//
//        let rightConstraint = NSLayoutConstraint(item: bottomRightButton,
//                           attribute: NSLayoutAttribute.right,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.right,
//                           multiplier: 1,
//                           constant: -margin)
//
//        let bottomConstraint = NSLayoutConstraint(item: bottomRightButton,
//                           attribute: NSLayoutAttribute.bottom,
//                           relatedBy: NSLayoutRelation.equal,
//                           toItem: view,
//                           attribute: NSLayoutAttribute.centerY,
//                           multiplier: 1,
//                           constant: margin/2)
//
//        view.addConstraints([leftConstraint, topConstraint, rightConstraint, bottomConstraint])
    }

}

