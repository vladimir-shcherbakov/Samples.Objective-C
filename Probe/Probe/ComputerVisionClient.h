//
//  ComputerVisionClient.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecognizePrintedText.h"
#import "RecognizePrintedTextInStream.h"
#import "Protocols/AzClient.h"
#import "Protocols/ComputerVisionClient.h"

@interface ComputerVisionClient : NSObject <AzClient, ComputerVisionClient>

@property(readonly) NSString* endpoing;
@property(readonly) NSString* subsctiptionKey;

@end
