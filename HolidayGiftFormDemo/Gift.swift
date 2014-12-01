//
//  Gift.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 11/30/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import Foundation

class Gift {
   
    let recipient: String
    let item: String
    let budget: NSDecimalNumber
    let status: Status
    
    enum Status: String {
        case Purchased = "Purchased"
        case Wrapped = "Wrapped"
        case Delivered = "Delivered"
    }
    
    func todo() -> String {
        switch status {
        case .Purchased:
            return "Wrap it!"
        case .Wrapped:
            return "Mail it!"
        case .Delivered:
            return "Sit back and relax :)"
        }
    }
    
    init(recipient: String,
        item: String,
        budget: NSDecimalNumber,
        status: Status)
    {
        self.recipient = recipient
        self.item = item
        self.budget = budget
        self.status = status
    }
    
}
