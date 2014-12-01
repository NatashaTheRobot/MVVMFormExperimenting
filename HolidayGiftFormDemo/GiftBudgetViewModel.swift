//
//  GiftBudgetViewModel.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import Foundation

class GiftBudgetViewModel: GiftFieldViewModelDelegate {
    
    lazy var labelText: String = "Budget"
    
    lazy var placeholderText: String = "e.g. $10.00"
    
    func valueText(giftViewModel: GiftViewModel) -> String? {
        if let budget = giftViewModel.budget {
            let numberFormatter = NSNumberFormatter()
            numberFormatter.numberStyle = .CurrencyStyle
            return numberFormatter.stringFromNumber(budget)
        }
        
        return nil
    }
    
    func isFilledIn(giftViewModel: GiftViewModel) -> Bool {
        return giftViewModel.budget != nil
    }
}
