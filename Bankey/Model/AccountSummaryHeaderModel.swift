//
//  ViewModel.swift
//  Bankey
//
//  Created by Parinthon Puksuriwong on 5/4/2565 BE.
//

import UIKit

struct AccountSummaryHeaderModel {
    let welcomeMessage: String
    let name: String
    let date: Date
    
    var dateFormatted: String {
        return date.monthDayYearString
    }
}


