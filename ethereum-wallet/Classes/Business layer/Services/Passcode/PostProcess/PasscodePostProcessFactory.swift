//
//  PasscodePostProcessFabric.swift
//  ethereum-wallet
//
//  Created by Artur Guseinov on 13/03/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import UIKit

class PasscodePostProcessFactory {
  
  let keychainService: KeystoreServiceProtocol
  let walletDataStoreService: WalletDataStoreService
  
  init(keychainService: KeystoreServiceProtocol, walletDataStoreService: WalletDataStoreService) {
    self.keychainService = keychainService
    self.walletDataStoreService = walletDataStoreService
  }
  
  func create(with state: PasscodeState) -> PasscodePostProcessProtocol {
    switch state {
    case .set:
      return PasscodeNewPostProcess(keystoreService: keychainService, walletDataStoreService: walletDataStoreService)
    case .restoreJson(let key):
      return PasscodeRestoreJsonPostProcess(key: key, keystoreService: keychainService, walletDataStoreService: walletDataStoreService)
    case .restorePrivate(let key):
      return PasscodeRestorePrivatePostProcess(key: key, keystoreService: keychainService, walletDataStoreService: walletDataStoreService)
    case .enter:
      return PasscodeEnterPostProcess()
    case .change:
      return PasscodeEnterPostProcess()
    }
  }

}
