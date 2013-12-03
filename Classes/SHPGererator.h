//
//  SHPGererator.h
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/6/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

enum {
    SHPRectangle  = 0,
    SHPRoudedRect = 1,
    SHPTriangle   = 2,
    SHPCicle      = 3,
    SHPArrowUP   = 4,
    SHPArrowDOWN = 5,
    SHPArrowRIGHT   = 6,
    SHPArrowLEFT   = 7,
    SHPStar   = 8,
    SHPHex = 9,
    SHPNoShape = 10,
};

#define NUMBER_OF_SHAPES 11
typedef NSUInteger SHPShape;

@interface SHPGererator : NSObject

+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColor:(UIColor *)fill borderColor:(UIColor *)border borderWidth:(CGFloat)width text:(NSString *)text textColor:(UIColor *)text_color font:(UIFont *)font;


+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColorRGB:(int)fill borderColorRGB:(int)border borderWidth:(CGFloat)width text:(NSString *)text textColorRGB:(int)text_color font:(UIFont *)font;
@end
