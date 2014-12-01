//
//  GiftStatusViewModel.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

class GiftStatusViewModel: GiftFieldViewModelDelegate {
    
    lazy var labelText: String = "Status"
    
    lazy var placeholderText: String = "e.g. Wrapped"
    
    func valueText(giftViewModel: GiftViewModel) -> String? {
        return giftViewModel.status?.rawValue
    }
    
    func isFilledIn(giftViewModel: GiftViewModel) -> Bool {
        return giftViewModel.status != nil
    }
}
