//
//  GiftRecipientViewModel.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

class GiftRecipientViewModel: GiftFieldViewModelDelegate {
   
    lazy var labelText: String = "Recipient"
    
    lazy var placeholderText: String = "e.g. My Aunt Mary"
    
    func valueText(giftViewModel: GiftViewModel) -> String? {
        return giftViewModel.recipient
    }
    
    func isFilledIn(giftViewModel: GiftViewModel) -> Bool {
        return giftViewModel.recipient != nil
    }
    
}
