// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov

import Foundation
import RealmSwift

class MigrationConfigurator: ConfiguratorProtocol {

  func configure() {
    Realm.Configuration.defaultConfiguration = Realm.Configuration(
      schemaVersion: 10,
      migrationBlock: { migration, oldSchemaVersion in

        if oldSchemaVersion < 7 {
          migration.deleteData(forType: "RealmToken")
          migration.deleteData(forType: "RealmCoin")
        } else if oldSchemaVersion < 10 {
          migration.deleteData(forType: RealmTransaction.className())
        }
    })
  }

}