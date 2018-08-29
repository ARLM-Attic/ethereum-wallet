// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol ChooseCurrencyModuleInput: class {
  var output: ChooseCurrencyModuleOutput? { get set }
  func present(from: UIViewController, selectedIso: String, output: ChooseCurrencyModuleOutput)
}
