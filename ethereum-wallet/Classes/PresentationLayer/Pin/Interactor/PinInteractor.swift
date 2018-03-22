//
//  PinPinInteractor.swift
//  ethereum-wallet
//
//  Created by Artur Guseynov on 12/03/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import Foundation

typealias PinInfo = (title: String, isCancellable: Bool, isTouchIDAllowed: Bool)

class PinInteractor {
  weak var output: PinInteractorOutput!
  
  var pinService: PinServiceProtocol!
}


// MARK: - PinInteractorInput

extension PinInteractor: PinInteractorInput {
  
  func getPinInfo() {
    let info = (
      title: pinService.lockState.title,
      isCancellable: pinService.lockState.isCancellableAction,
      isTouchIDAllowed: pinService.isTouchIDAllowed
    )
    output.didReceivePinInfo(info)
  }
  
  func didAddSign(_ sign: String) {
    pinService.addSign(sign)
  }
  
  func didDeleteSign() {
    pinService.removeSign()
  }

}
