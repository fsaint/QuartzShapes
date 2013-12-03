//
//  SHPSelectroController.m
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/6/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import "SHPSelectorController.h"
#import "SHPCell.h"
#import "SHPLayout.h"


@implementation SHPSelectorController

-(id)init{
    self =  [super initWithCollectionViewLayout:[[SHPLayout alloc] init]];
    if (self){
    
    }
    return self;

}
-(void)viewDidLoad{

//    [sel re]
    [self.collectionView registerClass:[SHPCell class] forCellWithReuseIdentifier:@"MY_CELL"];
//    self.collectionView
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return NUMBER_OF_SHAPES;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath; {
    SHPCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"MY_CELL" forIndexPath:indexPath];
    cell.shape = indexPath.row;
    [cell setShape:indexPath.row theme:self.theme];
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item
    SHPCell *cell = (SHPCell *) [collectionView cellForItemAtIndexPath:indexPath];
    
    NSLog(@"Selected Shape %d ",cell.shape);

    if (self.shape_delegate)
        [self.shape_delegate selectedShape:cell.shape withTheme:cell.theme];
}
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
}
@end
