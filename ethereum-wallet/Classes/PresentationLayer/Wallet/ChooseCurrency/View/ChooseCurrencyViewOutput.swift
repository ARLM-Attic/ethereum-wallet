// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol ChooseCurrencyViewOutput: class {
  func viewIsReady()
  func didSelectCurrency(_ currency: FiatCurrency)
}
