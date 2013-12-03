//
//  SHPViewController.m
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 5/28/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import "SHPViewController.h"
#import "SHPThemeScrollController.h"
#import "SHPLayout.h"
#import "SHPGererator.h"
@interface SHPViewController ()
@property (nonatomic,strong) UIPopoverController *pop;
@end

@implementation SHPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIPopoverController *)pop{
    if (!_pop){
        //SHPSelectorController *shape = [[SHPSelectorController alloc] initWithCollectionViewLayout:[[SHPLayout alloc] init]];
        SHPThemeScrollController *scroll = [[SHPThemeScrollController alloc] initWithNibName:nil bundle:NULL];
        scroll.shape_delegate = self;
        _pop = [[UIPopoverController alloc] initWithContentViewController:scroll];
    }
    return _pop;
}

-(void)selectedShape:(SHPShape)shape withTheme:(SHPTheme *)theme{
    
    UIFont *font = [UIFont fontWithName:theme.font.fontName size:96.0];
    self.image.image = [SHPGererator makeShape:shape ofSize:_image.bounds.size fillColor:theme.fill_color borderColor:theme.border_color borderWidth:12.0 text:@"Here We Go!" textColor:theme.text_color font:font];
}
-(IBAction)selectShape:(id)sender{
    if (self.pop.isPopoverVisible)
        [self.pop dismissPopoverAnimated:YES];
    else
        [self.pop presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self.image];
    static BOOL first = YES;
    static CGPoint old;
    
    if (first){
        
        old = p;
        first = NO;
    }else{
        first = YES;
         NSLog(@"CGRectMake(%f * r.size.width ,%f * r.size.height,%f * r.size.width,%f * r.size.height);",old.x/512.0,old.y/512,(p.x - old.x)/512.0,(p.y-old.y)/512);
    }
    
    NSLog(@"%f,%f",p.x/512.0,p.y/512);
}
@end
