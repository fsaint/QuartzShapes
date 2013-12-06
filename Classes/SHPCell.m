//
//  SHPCell.m
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/6/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import "SHPCell.h"
#import "SHPTheme.h"
@implementation SHPCell
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.shape_view = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height)];
        self.shape_view.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.shape_view];
    }
    return self;
}
-(void)setShape:(SHPShape)shape theme:(SHPTheme *)theme{
    self.shape = shape;
    self.theme = theme;
    self.shape_view.image = [SHPGererator makeShape:self.shape ofSize:self.frame.size fillColor:theme.fill_color borderColor:theme.border_color borderWidth:3.0 text:@"" textColor:theme.text_color font:theme.font];
}
@end
