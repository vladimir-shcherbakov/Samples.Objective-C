//
//  ComputerVisionProtocol.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import "RecognizePrintedTextBuilder.h"
#import "RecognizePrintedTextBuildable.h"
#import "RecognizePrintedTextExecutor.h"
#import "Language.h"

@protocol ComputerVisionClient

//- (id<RecognizePrintedTextInStream>) recognizePrintedTextInStream;

// with all parameters initializer
- (id<RecognizePrintedTextExecutor>) recognizePrintedTextWithImageUrl:(NSURL *)imageUrl
                                                withDetectOrientation: (BOOL)detectOrientation
                                                         withLanguage: (NSString *)language;
// with only required parameters initializer
- (id<RecognizePrintedTextBuildable>) recognizePrintedTextWithImageUrl:(NSURL *)imageUrl;

// with no parameters initializer
// all intializations happen with the builder returned
- (id<RecognizePrintedTextBuilder>) recognizePrintedText;

- (id<RecognizePrintedTextExecutor>) recognizePrintedTextWithImageUrl:(NSURL *)imageUrl
                                                withDetectOrientation: (BOOL)detectOrientation
                                                         withOcrLanguage: (enum OcrLanguage)language;

@end
