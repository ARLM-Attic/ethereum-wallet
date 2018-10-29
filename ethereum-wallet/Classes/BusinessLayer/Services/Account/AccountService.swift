// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov

import Foundation

protocol AccountServiceProtocol {
  var isAuthorized: Bool { get }
  var currentAccount: Account? { get }
}

class AccountService: AccountServiceProtocol {
  
  let keychain: Keychain
  
  init(keychain: Keychain) {
    self.keychain = keychain
  }
  
  var currentAccount: Account? {
    guard keychain.accounts.count > keychain.currentAccount else {
      return nil
    }
    return keychain.accounts[keychain.currentAccount]
  }
  
  var isAuthorized: Bool {
    return keychain.passphrase != nil && currentAccount != nil
  }

}
