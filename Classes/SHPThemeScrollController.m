//
//  SHPThemeScrollController.m
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/16/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import "SHPThemeScrollController.h"
#import "SHPSelectorController.h"
@interface SHPThemeScrollController ()

@end

@implementation SHPThemeScrollController


-(void)selectedShape:(SHPShape)shape withTheme:(SHPTheme *)theme{
    if (self.shape_delegate)
        [self.shape_delegate selectedShape:shape withTheme:theme];
}

-(int)numberOfPages{
    return 6;
}

-(UIViewController *)controlerForPage:(int)page{
    SHPSelectorController *selector = [[SHPSelectorController alloc] init];
    switch (page) {
        case 0:
            selector.theme = [SHPTheme themeWithBorderRGB:0x699BF9 fillRGB:0x699BF9 textRGB:0x699BF9 font:[UIFont fontWithName: @"Verdana-Bold" size: [UIFont smallSystemFontSize]]];
            break;
        case 1:
            selector.theme = [SHPTheme themeWithBorderRGB:0x63CB39 fillRGB:0x63CB39 textRGB:0x63CB39 font:[UIFont fontWithName: @"Courier-Bold" size: [UIFont smallSystemFontSize]]];
            break;
        case 2:
            selector.theme = [SHPTheme themeWithBorderRGB:0xEEDD25 fillRGB:0xEEDD25 textRGB:0xEEDD25 font:[UIFont fontWithName: @"Palatino-Roman" size: [UIFont smallSystemFontSize]]];
            break;
        case 3:
            selector.theme = [SHPTheme themeWithBorderRGB:0xEF9223 fillRGB:0xEF9223 textRGB:0xEF9223 font:[UIFont fontWithName: @"AppleGothic" size: [UIFont smallSystemFontSize]]];
            break;
        case 4:
            selector.theme = [SHPTheme themeWithBorderRGB:0xEA515C fillRGB:0xEA515C textRGB:0xEA515C font:[UIFont fontWithName: @"Georgia-Italic" size: [UIFont smallSystemFontSize]]];
            break;
        case 5:
            selector.theme = [SHPTheme themeWithBorderRGB:0xBC43E3 fillRGB:0xBC43E3 textRGB:0xBC43E3 font:[UIFont fontWithName: @"Georgia-Italic" size: [UIFont smallSystemFontSize]]];
            break;
        default:
            break;
    }
    return selector;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)updatePages{
    for (UIView *v in self.scroll.subviews)
        [v removeFromSuperview];
    int number_of_pages = [self numberOfPages];
    self.scroll.contentSize = CGSizeMake(number_of_pages * self.scroll.bounds.size.width, self.scroll.bounds.size.height);
    
    if (!self.controllers)
        self.controllers = [NSMutableArray arrayWithCapacity:number_of_pages];
    for (int i=0;i<number_of_pages;i++){
        
        SHPSelectorController *c = nil;
        if (i>=[self.controllers count]){
            c = [self controlerForPage:i];
            [self.controllers addObject:c];
        }else{
            c = [self.controllers objectAtIndex:i];
        }
        c.shape_delegate = self;
        c.view.frame = CGRectMake(i * self.scroll.bounds.size.width, 0.0, self.scroll.bounds.size.width, self.scroll.bounds.size.height);

        
        [self.scroll addSubview:c.view];
    }

    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.scroll.pagingEnabled = YES;
    self.scroll.contentSize = CGSizeMake([self numberOfPages] * self.scroll.bounds.size.width, self.scroll.bounds.size.height);
    self.scroll.showsHorizontalScrollIndicator = NO;
    self.scroll.delegate = self;
    self.page_control.numberOfPages = [self numberOfPages];
    
  
}
-(void)viewDidAppear:(BOOL)animated{
    
}

-(void)viewDidLayoutSubviews{
    [self updatePages];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    self.page_control.currentPage = (int) (self.scroll.contentOffset.x / self.scroll.bounds.size.width) ;
}

@end
