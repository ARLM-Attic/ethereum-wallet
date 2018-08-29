// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol TokenDetailsRouterInput: class {
  func presentSend(for token: Token, from: UIViewController)
  func presentDetails(with transaction: TransactionDisplayer, from: UIViewController)
}
