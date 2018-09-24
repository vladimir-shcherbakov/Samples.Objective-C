//
//  Language.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
#define OcrLanguageRu      @"ru"
#define OcrLanguageEN      @"en"
#define HLCSRestMethodPut       @"PUT"
#define HLCSRestMethodDelete    @"DELETE"
typedef NSString*               OcrLanguage;
*/

enum months {Jan, Feb, Mar, Apr, May, Jun, July, Aug, Sept, Oct, Nov, Dec};
enum months currentMonth;

enum OcrLanguage {OcrLanguage_unk, OcrLanguage_ru, OcrLanguage_en, OcrLanguage_zhHans, OcrLanguage_srCyrl};


@interface OcrLanguageHelper : NSObject

+ (NSString*) convertToStringEnumValue: (enum OcrLanguage) ev;

@end


enum OcrLanguage oc;
@interface Language : NSObject

@property (class, readonly) NSString* unk;
@property (class, readonly) NSString* ru;
@property (class, readonly) NSString* en;


@end

/*
 "enum": [
 "unk",
 "zh-Hans",
 "zh-Hant",
 "cs",
 "da",
 "nl",
 "en",
 "fi",
 "fr",
 "de",
 "el",
 "hu",
 "it",
 "ja",
 "ko",
 "nb",
 "pl",
 "pt",
 "ru",
 "es",
 "sv",
 "tr",
 "ar",
 "ro",
 "sr-Cyrl",
 "sr-Latn",
 "sk"
 ]
 */
