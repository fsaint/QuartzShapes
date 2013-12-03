//
//  SHPSelectroController.h
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/6/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHPTheme.h"
#import "SHPThemeScrollController.h"

@interface SHPSelectorController : UICollectionViewController <UICollectionViewDelegate>

@property (nonatomic,strong) SHPTheme *theme;
@property (nonatomic,weak) id <SHPSelectionDelegate> shape_delegate;

@end
