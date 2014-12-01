//
//  GiftFieldViewModelDelegate.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//


protocol GiftFieldViewModelDelegate {
   
    var labelText: String { get }
    
    var placeholderText: String { get }
    
    func valueText(giftViewModel: GiftViewModel) -> String?
    
    func isFilledIn(giftViewModel: GiftViewModel) -> Bool
        
}
