//
//  AzClient.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/10/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerVisionClient.h"

@protocol AzClient

    + (id<AzClient>) defineForEndpoing:(NSString*)endpoing;
    - (id<ComputerVisionClient>) withSubscriptionKey:(NSString*)key;

    + (id<ComputerVisionClient>) defineForEndpoing:(NSString*)endpoing withSubscriptionKey:(NSString*)key;

    //-(id<AzClient>) initWithEndpoing:(NSString*)endpoing;

@end
