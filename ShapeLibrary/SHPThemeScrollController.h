//
//  SHPThemeScrollController.h
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/16/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SHPGererator.h"
#import "SHPTheme.h"

@protocol SHPSelectionDelegate <NSObject>
-(void)selectedShape:(SHPShape)shape withTheme:(SHPTheme *)theme;
@end


@interface SHPThemeScrollController : UIViewController <UIScrollViewDelegate,SHPSelectionDelegate>
@property (nonatomic,strong) IBOutlet UIScrollView *scroll;
@property (nonatomic,strong) IBOutlet UIPageControl *page_control;
@property (nonatomic,strong) NSMutableArray *controllers;
@property (nonatomic,weak) id<SHPSelectionDelegate> shape_delegate;
@end
