//
//  SHPViewController.h
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 5/28/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHPSelectorController.h"
#import "SHPThemeScrollController.h"

@interface SHPViewController : UIViewController <SHPSelectionDelegate>
@property (nonatomic,strong) IBOutlet UIImageView *image;
-(IBAction)selectShape:(id)sender;

@end
