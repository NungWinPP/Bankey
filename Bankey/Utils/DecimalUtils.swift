//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Parinthon Puksuriwong on 5/4/2565 BE.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
