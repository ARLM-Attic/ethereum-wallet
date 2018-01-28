//
//  SendTokenSendTokenModuleInput.swift
//  ethereum-wallet
//
//  Created by Artur Guseynov on 25/01/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import UIKit


protocol SendTokenModuleInput: class {
  var output: SendTokenModuleOutput? { get set }
  func presentSendToken(with token: Token, from viewController: UIViewController)
}
