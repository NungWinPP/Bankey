//
//  AccountSummaryModel.swift
//  Bankey
//
//  Created by Parinthon Puksuriwong on 5/4/2565 BE.
//

import Foundation

enum AccountType: String, Codable {
    case Banking
    case CreditCard
    case Investment
}

struct AccountSummaryModel: Codable {
    let accountType: AccountType
    let accountName: String
    let balance: Decimal
    
    var balanceAsAttributedString: NSAttributedString {
        return CurrencyFormatter().makeAttributedCurrency(balance)
    }
}


struct Account: Codable {
    let id: String
    let type: AccountType
    let name: String
    let amount: Decimal
    let createdDateTime: Date
}
