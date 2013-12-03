//
//  SHPCell.h
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/6/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHPGererator.h"
#import "SHPTheme.h"
#import "SHPThemeScrollController.h"

@interface SHPCell : UICollectionViewCell <SHPSelectionDelegate>
@property (strong, nonatomic) UIImageView* shape_view;
@property (nonatomic, assign) SHPShape shape;
@property (nonatomic, strong) SHPTheme *theme;
-(void)setShape:(SHPShape)shape theme:(SHPTheme *)theme;


@end
