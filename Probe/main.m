//
//  main.m
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/10/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Models/Language.h"
#import "ComputerVisionClient.h"


typedef NSString * CALayerContentsGravity;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CALayerContentsGravity e = @"bla";
        enum OcrLanguage ocrLang = OcrLanguage_ru;
        
        
        // builder based client creation
        id<ComputerVisionClient> client =
            [[ComputerVisionClient defineForEndpoing: @"shch-endpoing"]
             withSubscriptionKey: @"shch-key"];
        
        // parameter based client creation
        id<ComputerVisionClient> client1 = [ComputerVisionClient
                                            defineForEndpoing: @"Endpoing"
                                            withSubscriptionKey: @"Key"];
        
        NSURL* imageUrl = [NSURL URLWithString: @"https:/shch.com"];
        
        // builder based (for all params: required and optional) operation execution
        [[[[[client recognizePrintedText]
            withMondatoryImageUrl: imageUrl]
           withOptionalLanguage: Language.ru]
          build]
         execute:^(OcrResult * res, NSError * err) {
            // code
        }];
       
       // builder based (for optional params) operation execution
        [[[[client recognizePrintedTextWithImageUrl: imageUrl]
           withLanguage: Language.en ]
          build]
         execute:^(OcrResult * res, NSError * err) {
            // code
        }];
        
        // parameter based operation execution
        
        [[client1 recognizePrintedTextWithImageUrl: imageUrl
                             withDetectOrientation: TRUE
                                      withLanguage: Language.en]
         execute:^(OcrResult * res, NSError * err) {
            // code
        }];
        
        [[client1 recognizePrintedTextWithImageUrl: imageUrl
                             withDetectOrientation: TRUE
                                      withOcrLanguage: OcrLanguage_en]
         execute:^(OcrResult * res, NSError * err) {
             // code
         }];
    }
    
    return 0;
}
