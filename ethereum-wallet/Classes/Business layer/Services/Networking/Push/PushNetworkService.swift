// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov

import Foundation

class PushNetworkService: NetworkLoadable, PushNetworkServiceProtocol  {
  
  func register(token: String, address: String, queue: DispatchQueue, result: @escaping (Result<Bool>) -> Void) {
    loadObjectJSON(request: API.Push.register(token: token, address: address), queue: queue) { resultHandler in
      switch resultHandler {
        
      case .success(let object):
        print(object)
        // TODO: check if device is registered
        result(Result.success(true))
        
      case .failure(let error):
        result(Result.failure(error))
      }

    }
  }
  
  func unregister(queue: DispatchQueue, result: @escaping (Result<Bool>) -> Void) {
    loadObjectJSON(request: API.Push.unregister, queue: queue) { resultHandler in
      
    }
  }
  
}

