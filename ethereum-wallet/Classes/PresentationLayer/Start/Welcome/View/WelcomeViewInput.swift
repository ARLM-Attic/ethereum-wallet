// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol WelcomeViewInput: class, Presentable {
  func setupInitialState(restoring: Bool)
}
