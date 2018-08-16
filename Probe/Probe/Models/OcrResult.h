//
//  OcrResult.h
//  Probe
//
//  Created by Vladimir Shcherbakov on 8/11/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OcrResult : NSObject

    @property NSString * language;
    @property NSNumber * textAngle;
    @property NSString * orientation;
    @property NSArray * regions;

- (id) initLanguage: (NSString *)lang orientation: (NSString *) orient textAngle: (NSNumber*) ang;

@end
