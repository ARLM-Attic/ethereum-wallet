// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit

protocol CoinDataStoreServiceProtocol {
  func createCoin()
  func find() -> [Coin]
  func find(withIso iso: String) -> Coin?
  func observe(updateHandler: @escaping ([Coin]) -> Void)
  func save(_ model: Coin)
  func save(_ models: [Coin])
}
