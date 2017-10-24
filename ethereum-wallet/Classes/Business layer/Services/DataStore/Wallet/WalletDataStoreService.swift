//
//  WalletDataStoreService.swift
//  ethereum-wallet
//
//  Created by Artur Guseinov on 21/10/2017.
//  Copyright © 2017 Artur Guseinov. All rights reserved.
//

import Foundation

class WalletDataStoreService: RealmStorable<Wallet>, WalletDataStoreServiceProtocol {
  
  typealias PlainType = Wallet
  
  func createWallet(address: String) {
    let wallet = Wallet(balance: 0, address: address)
    save(wallet)
  }

  func getWallet() -> Wallet {
    return find().first!
  }
  
  func observe(updateHandler: @escaping (Wallet) -> Void) {
    super.observe { (wallets) in
      guard let wallet = wallets.first else { return }
      updateHandler(wallet)
    }
  }

}
