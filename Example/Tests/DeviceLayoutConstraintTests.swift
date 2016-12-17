//
//  DeviceLayoutConstraintTests.swift
//  DeviceLayout
//
//  Created by CruzDiary on 15/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest

import Device
import Quick
import Nimble

@testable import DeviceLayout

class DeviceLayoutConstraintTests: QuickSpec {
    
    struct Expected {
        struct Constant {
            static let inch3_5: CGFloat = 30
            static let inch4: CGFloat = 50
            static let inch4_7: CGFloat = 80
            static let inch5_5: CGFloat = 100
            static let inch7_9: CGFloat = 150
            static let inch9_7: CGFloat = 200
            static let inch12_9: CGFloat = 250
        }
    }
    
    override func spec() {
        var sut: DeviceLayoutConstraintSpy!
        let defaultConstant: CGFloat = 30
        
        beforeEach {
            sut = DeviceLayoutConstraintSpy()
            sut.constant = defaultConstant
        }
        
        describe("DeviceLayoutConstraint") {
            context("when use iPhone6") {
                beforeEach {
                    sut.expectedDeviceSize = .screen5_5Inch
                    sut.inch5_5 = Expected.Constant.inch5_5
                }
                
                it("constant should be equal to \(Expected.Constant.inch5_5)") {
                    expect(sut.constant).to(equal(Expected.Constant.inch5_5))
                }
                
                context("when update iPhone4_7 inch constant") {
                    beforeEach {
                        sut.inch4_7 = Expected.Constant.inch4_7
                    }
                    
                    it("constant should be equal to inch5_5") {
                        expect(sut.constant).to(equal(Expected.Constant.inch5_5))
                    }
                }
            }
            
            context("when deviceSize is 4inch device") {
                beforeEach {
                    sut.expectedDeviceSize = .screen4Inch
                }
                
                context("when set constant per deviceSize") {
                    beforeEach {
                        sut.inch3_5 = Expected.Constant.inch3_5
                        sut.inch4 = Expected.Constant.inch4
                        sut.inch4_7 = Expected.Constant.inch4_7
                        sut.inch5_5 = Expected.Constant.inch5_5
                        sut.inch7_9 = Expected.Constant.inch7_9
                        sut.inch9_7 = Expected.Constant.inch9_7
                        sut.inch12_9 = Expected.Constant.inch12_9
                    }
                    
                    it("layoutIfNeeded should be called ONLY once") {
                        expect(sut.layoutIfNeededCalledCount).to(equal(1))
                    }
                }
            }
        }
    }
}

class DeviceLayoutConstraintSpy: DeviceLayoutConstraint {
    var expectedDeviceSize: Size!
    var layoutIfNeededCalledCount: Int = 0
    
    override open func layoutIfNeeded() {
        layoutIfNeededCalledCount += 1
    }
    
    override open func deviceSize() -> Size {
        return expectedDeviceSize
    }
}
