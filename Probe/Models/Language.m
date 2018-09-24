//
//  Language.m
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import "Language.h"

//NSArray* lan = @[ @"unk", @"zh-Hans", @"zh-Hant", @"sr-Cyrl", @"sr-Latn"];
//static NSString* lan[] = { @"unk", @"ru", @"en", @"zh-Hans", @"zh-Hant"};


@implementation OcrLanguageHelper

+ (NSString*) convertToStringEnumValue: (enum OcrLanguage) ev {
    switch (ev) {
        case OcrLanguage_unk: return @"unk";
        case OcrLanguage_ru     : return @"ru";
        case OcrLanguage_en     : return @"en";
        case OcrLanguage_zhHans : return @"zh-Hans";
        case OcrLanguage_srCyrl : return @"sr-Cyrl";
        default: return @"unk";
    }
}

@end

@implementation Language

static NSString * _unk = @"unk";

+ (NSString *)unk {
    return _unk;
}

static NSString * _ru = @"ru";

+ (NSString *) ru {
    return _ru;
}

static NSString * _en = @"en";

+ (NSString *) en {
    return _en;
}






@end
