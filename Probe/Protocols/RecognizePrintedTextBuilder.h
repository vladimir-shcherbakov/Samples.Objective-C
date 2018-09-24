//
//  AzClient.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/10/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecognizePrintedTextExecutor.h"

@protocol RecognizePrintedTextBuilder
- (id<RecognizePrintedTextBuilder>) withOptionalDetectOrientation:(BOOL)detectOrientation;
- (id<RecognizePrintedTextBuilder>) withOptionalLanguage:(NSString *)language;
- (id<RecognizePrintedTextBuilder>) withMondatoryImageUrl:(NSURL *)imageUrl;
- (id<RecognizePrintedTextExecutor>) build;
@end
