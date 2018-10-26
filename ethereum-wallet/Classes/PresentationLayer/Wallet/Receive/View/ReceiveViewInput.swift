// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol ReceiveViewInput: class, Presentable {
  func setupInitialState()
  func didReceiveWallet(_ wallet: Wallet)
  func didReceiveQRImage(_ image: UIImage)
}
