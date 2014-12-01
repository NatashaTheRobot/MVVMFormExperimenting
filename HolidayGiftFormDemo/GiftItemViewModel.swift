//
//  GiftItemViewModel.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//


class GiftItemViewModel: GiftFieldViewModelDelegate {
    
    lazy var labelText: String = "Item"
    
    lazy var placeholderText: String = "e.g. Choo Choo Train"
    
    func valueText(giftViewModel: GiftViewModel) -> String? {
        return giftViewModel.item
    }
    
    func isFilledIn(giftViewModel: GiftViewModel) -> Bool {
        return giftViewModel.item != nil
    }
}
