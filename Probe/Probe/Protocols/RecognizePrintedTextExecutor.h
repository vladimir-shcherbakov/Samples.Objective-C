//
//  AzClient.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/10/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../Models/OcrResult.h"

@protocol RecognizePrintedTextExecutor
- (void) execute: (void(^)(OcrResult*, NSError*)) block;
@end
