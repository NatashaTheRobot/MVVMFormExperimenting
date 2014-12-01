//
//  GiftTests.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import XCTest

class GiftTests: XCTestCase {
    
    func testTodo_Purchased() {
        let gift = Gift(
            recipient: "My Aunt Mary",
            item: "Choo Choo Train",
            budget: NSDecimalNumber(double: 20.00),
            status: .Purchased)
        XCTAssertEqual(gift.todo(), "Wrap it!")
    }
    
    func testTodo_Wrapped() {
        let gift = Gift(
            recipient: "My Aunt Mary",
            item: "Choo Choo Train",
            budget: NSDecimalNumber(double: 20.00),
            status: .Wrapped)
        XCTAssertEqual(gift.todo(), "Mail it!")
    }
    
    func testTodo_Delivered() {
        let gift = Gift(
            recipient: "My Aunt Mary",
            item: "Choo Choo Train",
            budget: NSDecimalNumber(double: 20.00),
            status: .Delivered)
        XCTAssertEqual(gift.todo(), "Sit back and relax :)")
    }
    
}

/* 

func todo(fromStatus status: Status) -> String {
switch status {
case .Purchased:
return "Wrap it!"
case .Wrapped:
return "Mail it!"
case .Delivered:
return "Sit back and relax :)"
}
}

enum Status: String {
case Purchased = "Purchased"
case Wrapped = "Wrapped"
case Delivered = "Delivered"
}
*/
