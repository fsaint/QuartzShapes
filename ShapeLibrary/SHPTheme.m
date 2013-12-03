//
//  SHPTheme.m
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/16/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import "SHPTheme.h"
#import "SHPGlobals.h"
@implementation SHPTheme

+(SHPTheme *)themeWithBorderRGB:(int)border fillRGB:(int)fill textRGB:(int)text font:(UIFont *)font{
    SHPTheme *theme = [[SHPTheme alloc] init];
    theme.fill_color = UIColorFromRGB(fill);
    theme.text_color = UIColorFromRGB(text);
    theme.border_color = UIColorFromRGB(border);
    theme.font = font;
    
    return theme;

}
@end
