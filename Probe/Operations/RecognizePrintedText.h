//
//  RecognizePrintedText.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../Protocols/RecognizePrintedTextExecutor.h"
#import "../Protocols/RecognizePrintedTextBuilder.h"
#import "../Protocols/RecognizePrintedTextBuildable.h"

@interface RecognizePrintedText : NSObject
<
    RecognizePrintedTextBuildable,
    RecognizePrintedTextBuilder,
    RecognizePrintedTextExecutor
>

    @property (readonly) BOOL detectOrientation;
    @property (readonly) NSString * language;
    @property (readonly) NSURL * imageUrl;

//+ (id<RecognizePrintedTextBuilder>) getBuilder;

- (id)initWithImageUrl:(NSURL *)imageUrl withDetectOrientation: (BOOL)detectOrientation withLanguage: (NSString *)language;
- (id) init;
- (id) initWithImageUrl:(NSURL *)imageUrl;


@end
