// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov

import Foundation

protocol AmountFormatterProtocol {
  var allowFraction: Bool { get }
  func isValidDecimal(input: String) -> Bool
}

class AmountFormatter: AmountFormatterProtocol {
  
  let decimals: Int
  
  init(decimals: Int) {
    self.decimals = decimals
  }
  
  var allowFraction: Bool {
    return decimals > 1
  }
  
  func isValidDecimal(input: String) -> Bool {
    guard input.isEmpty == false else {
      return true
    }
    
    let formatter = NumberFormatter()
    formatter.allowsFloats = true
    
    let decimalSeparator = formatter.decimalSeparator ?? "."
    
    if let _ = formatter.number(from: input) {
      let numberComponents = input.components(separatedBy: decimalSeparator)
      let fractionDigits = numberComponents.count == 2 ? numberComponents.last ?? "" : ""
      return fractionDigits.count <= decimals
    }
    
    return false
  }

}
