// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov

import Foundation

protocol PushConfiguratorProtocol {
  func configureRemoteNotifications(token: Data)
  func unregister()
}
