//
//  SHPTheme.h
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/16/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHPTheme : NSObject
@property (nonatomic,strong) UIColor *border_color;
@property (nonatomic,strong) UIColor *fill_color;
@property (nonatomic,strong) UIColor *text_color;
@property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) NSString *backgroundName;
@property (nonatomic,strong) NSArray *pen_color;

+(SHPTheme *)themeWithBorderRGB:(int)border fillRGB:(int)fill textRGB:(int)text font:(UIFont *)font;

@end
