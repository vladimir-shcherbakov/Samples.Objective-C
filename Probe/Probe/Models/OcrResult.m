//
//  OcrResult.m
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import "OcrResult.h"

@implementation OcrResult

- (id) initLanguage: (NSString *)lang orientation: (NSString *) orient textAngle: (NSNumber*) ang {
    self = [super init];
    if (self) {
        _language = lang;
        _orientation = orient;
        _textAngle = ang;
    }
    
    return self;
}
        

@end
