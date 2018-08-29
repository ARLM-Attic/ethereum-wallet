// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol WelcomeViewOutput: class {
  func viewIsReady()
  func newDidPressed()
  func didImportPrivateKeyPressed()
  func didImportJsonKeyPressed()
  func didImportMnemonicPressed()
}
