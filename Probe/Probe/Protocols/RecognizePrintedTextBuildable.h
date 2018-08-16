//
//  AzClient.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/10/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecognizePrintedTextExecutor.h"



@protocol RecognizePrintedTextBuildable
    - (id<RecognizePrintedTextBuildable>) withDetectOrientation:(BOOL)detectOrientation;
    - (id<RecognizePrintedTextBuildable>) withLanguage:(NSString *)language;
    - (id<RecognizePrintedTextExecutor>) build;
@end

/*
@protocol RecognizePrintedTextBlank
- (id<RecognizePrintedTextBuildable>) initWithImageUrl:(NSURL *)imageUrl;
@end
 */
