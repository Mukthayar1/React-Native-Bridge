//
//  HelloWorld.swift
//  bridgeee
//
//  Created by Muhammad Mukthayar on 25/05/2024.
//

import Foundation
import React


@objc(IosEvents)
class IosEvents : RCTEventEmitter {
  
  override func supportedEvents() -> [String]! {
    return ["OnSuccess","OnFailuer"]
  }
  
  @objc(sumNumbersEvents:withB:)
  func sumNumbers(a: Int, b: Int) {
      let result = a + b
    
        if(result > 0){
          sendEvent(withName: "OnSuccess", body:["result":result])
          }else{
            sendEvent(withName: "OnFailuer", body:["error":"the result is negative \(result)"])
          }
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return false;
  }
  
}
