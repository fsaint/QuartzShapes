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
    SHPArrow = 4,
    SHPStar   = 5,
    SHPHex = 6,
    SHPBubbleLeft = 7,
    SHPBubbleRight = 8,
    SHPRect = 9,
    SHPRectTriangleLeft = 10,
    SHPRectTriangleRight = 11,

    SHPNoShape = 12,
};

#define NUMBER_OF_SHAPES 12
typedef NSUInteger SHPShape;

@interface SHPGererator : NSObject

+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColor:(UIColor *)fill borderColor:(UIColor *)border borderWidth:(CGFloat)width text:(NSString *)text textColor:(UIColor *)text_color font:(UIFont *)font;


+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColorRGB:(int)fill borderColorRGB:(int)border borderWidth:(CGFloat)width text:(NSString *)text textColorRGB:(int)text_color font:(UIFont *)font;


+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColorRGB:(int)fill borderColorRGB:(int)border borderWidth:(CGFloat)width text:(NSString *)text textColorRGB:(int)text_color font:(UIFont *)font;

@end
