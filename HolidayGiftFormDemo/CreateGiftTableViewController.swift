//
//  CreateGiftTableViewController.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import UIKit

class CreateGiftTableViewController: UITableViewController {

    private let giftViewModel = GiftViewModel()
    private let giftFieldsViewModels: [GiftFieldViewModelDelegate] = [
        GiftRecipientViewModel(),
        GiftItemViewModel(),
        GiftBudgetViewModel(),
        GiftStatusViewModel()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return giftFieldsViewModels.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCellWithIdentifier("LabelAndTextInputTableViewCell") as LabelAndTextInputTableViewCell
        
        let rowViewModel = giftFieldsViewModels[indexPath.row]
        
        cell.configure(labelText: rowViewModel.labelText, placeholderText: rowViewModel.placeholderText, valueText: rowViewModel.valueText(giftViewModel))
        
        return cell
    }

}
