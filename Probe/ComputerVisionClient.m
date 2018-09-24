//
//  ComputerVisionClient.m
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import "Operations/RecognizePrintedText.h"
#import "ComputerVisionClient.h"

@implementation ComputerVisionClient

-(id)initWithEndpoing:(NSString*)endpoing {
    self = [super init];
    if (self) {
        _endpoing = endpoing;
    }
    
    return self;
}

+ (id<AzClient>) defineForEndpoing:(NSString *)enpoing {
    id<AzClient> client = [[ComputerVisionClient alloc] initWithEndpoing: enpoing];
    return client;
}

- (id<ComputerVisionClient>)withSubscriptionKey:(NSString *)key {
    _subsctiptionKey = key;
    return self;
}

+ (id<ComputerVisionClient>) defineForEndpoing:(NSString*)endpoing withSubscriptionKey:(NSString*)key {
    id<ComputerVisionClient> client = [[ComputerVisionClient defineForEndpoing: endpoing] withSubscriptionKey: key];
    return client;
}

- (id<RecognizePrintedTextBuilder>) recognizePrintedText {
    return [[RecognizePrintedText alloc] init];
}

- (id<RecognizePrintedTextBuildable>)recognizePrintedTextWithImageUrl:(NSURL *)imageUrl {
    return [[RecognizePrintedText alloc] initWithImageUrl: imageUrl];
}

- (id<RecognizePrintedTextExecutor>)recognizePrintedTextWithImageUrl:(NSURL *)imageUrl withDetectOrientation:(BOOL)detectOrientation withLanguage:(NSString *)language {
    return [[RecognizePrintedText alloc] initWithImageUrl: imageUrl withDetectOrientation: detectOrientation withLanguage: language];
}

- (id<RecognizePrintedTextExecutor>)recognizePrintedTextWithImageUrl:(NSURL *)imageUrl
                                               withDetectOrientation:(BOOL)detectOrientation
                                                     withOcrLanguage:(enum OcrLanguage)language {
    
    NSString* strLang = [OcrLanguageHelper convertToStringEnumValue: language];  // convert enum value to string
    return [[RecognizePrintedText alloc] initWithImageUrl: imageUrl withDetectOrientation: detectOrientation withLanguage: strLang];
}



//- (id<RecognizePrintedTextInStream>)recognizePrintedTextInStream {
//}

@end
