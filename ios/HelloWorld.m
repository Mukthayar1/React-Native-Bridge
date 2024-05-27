//
//  HelloWorld.m
//  bridgeee
//
//  Created by Muhammad Mukthayar on 25/05/2024.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(HelloWorld,NSObject)
RCT_EXTERN_METHOD(helloworld)
RCT_EXTERN_METHOD(sumNumbers : (NSInteger)a withB:(NSInteger)b resolver:(RCTPromiseResolveBlock)resolver rejecter:(RCTPromiseRejectBlock)rejecter)

@end
