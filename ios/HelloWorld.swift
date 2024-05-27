//
//  HelloWorld.swift
//  bridgeee
//
//  Created by Muhammad Mukthayar on 25/05/2024.
//

import Foundation
import React


@objc(HelloWorld)
class HelloWorld : NSObject {
  
  @objc
  func helloworld(){
    print("Mukthayar is here...")
  }
  
  @objc(sumNumbers:withB:resolver:rejecter:)
  func sumNumbers(a: Int, b: Int, resolver: RCTPromiseResolveBlock, rejecter: RCTPromiseRejectBlock) {
      let result = a + b
        if(result > 0){
            resolver(result)
          }else{
            rejecter("NEGATIVITY NOT ALLOW HEREEE","sss",nil)
          }
      
  }
}
