//
//  HelloWorld.m
//  bridgeee
//
//  Created by Muhammad Mukthayar on 25/05/2024.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
# import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(IosEvents, RCTEventEmitter)
RCT_EXTERN_METHOD(sumNumbersEvents : (NSInteger)a withB:(NSInteger)b)

@end
