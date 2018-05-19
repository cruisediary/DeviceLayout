//
//  DeviceLayout.swift
//  DeviceLayout
//
//  Created by CruzDiary on 15/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

import Device

class DeviceLayoutConstraint: NSLayoutConstraint {
    
    @IBInspectable var inch3_5: CGFloat = 0.0 { didSet { updateConstant(size: .screen3_5Inch, constant: inch3_5)}}
    @IBInspectable var inch4: CGFloat = 0.0 { didSet { updateConstant(size: .screen4Inch, constant: inch4)}}
    @IBInspectable var inch4_7: CGFloat = 0.0 { didSet { updateConstant(size: .screen4_7Inch, constant: inch4_7)}}
    @IBInspectable var inch5_5: CGFloat = 0.0 { didSet { updateConstant(size: .screen5_5Inch, constant: inch5_5)}}
    @IBInspectable var inch5_8: CGFloat = 0.0 { didSet { updateConstant(size: .screen5_8Inch, constant: inch5_8)}}
    @IBInspectable var inch7_9: CGFloat = 0.0 { didSet { updateConstant(size: .screen7_9Inch, constant: inch7_9)}}
    @IBInspectable var inch9_7: CGFloat = 0.0 { didSet { updateConstant(size: .screen9_7Inch, constant: inch9_7)}}
    @IBInspectable var inch10_5: CGFloat = 0.0 { didSet { updateConstant(size: .screen10_5Inch, constant: inch10_5)}}
    @IBInspectable var inch12_9: CGFloat = 0.0 { didSet { updateConstant(size: .screen12_9Inch, constant: inch12_9)}}
    
    fileprivate func updateConstant(size: Size, constant: CGFloat) {
        if size == deviceSize() {
            self.constant = constant
            layoutIfNeeded()
        }
    }
    
    open func deviceSize() -> Size {
        return Device.deviceSize
    }
    
    open func layoutIfNeeded() {
        self.firstItem?.layoutIfNeeded()
        self.secondItem?.layoutIfNeeded()
    }
}

fileprivate extension Device {
    static let deviceSize = Device.size()
}
