//
//  RecognizePrintedText.m
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import "RecognizePrintedText.h"
#import "../Models/Language.h"

@implementation RecognizePrintedText

- (id)initWithImageUrl:(NSURL *)imageUrl withDetectOrientation: (BOOL)detectOrientation withLanguage: (NSString *)language {
    self = [super init];
    if (self) {
        _detectOrientation = TRUE;
        _language = Language.unk;
        _imageUrl = nil;
    }
    
    return self;
}

- (id) init {
    return [self initWithImageUrl: nil withDetectOrientation: TRUE withLanguage: Language.ru];
}

- (id) initWithImageUrl:(NSURL *)imageUrl {
    return [self initWithImageUrl: imageUrl withDetectOrientation: TRUE withLanguage: Language.ru];
}

/*
+ (id<RecognizePrintedTextBuilder>) getBuilder {
    return [[RecognizePrintedText alloc] init];
}
*/

- (id<RecognizePrintedTextExecutor>) build {
    return self;
}

- (id<RecognizePrintedTextBuildable>)withDetectOrientation:(BOOL)detectOrientation {
    _detectOrientation = detectOrientation;
    return self;
}

- (id<RecognizePrintedTextBuildable>)withLanguage:(NSString *)language {
    _language = language;
    return self;
}

// << builder pattern methods

- (id<RecognizePrintedTextBuilder>) withOptionalLanguage:(NSString *)language {
    _language = language;
    return self;
}

- (id<RecognizePrintedTextBuilder>) withMondatoryImageUrl:(NSURL *)imageUrl {
    _imageUrl = imageUrl;
    return self;
}

- (id<RecognizePrintedTextBuilder>)withOptionalDetectOrientation:(BOOL)detectOrientation {
    _detectOrientation = detectOrientation;
    return self;
}

// >> builder pattern methods

// << command pattern methods
- (void) execute: (void(^)(OcrResult*, NSError*)) block {
    
    OcrResult * res = [[OcrResult alloc] initLanguage: @"German"
                                          orientation: @"Vertical"
                                            textAngle: [NSNumber numberWithDouble: 15.0]];
    
    NSLog(@"== Running RecognizePrintedText Operation");
    
    block(res, nil);
}
// << command pattern methods
@end
