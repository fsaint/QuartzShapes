//
//  SHPGererator.m
//  ShapeLibrary
//
//  Created by Felipe Saint-Jean on 6/6/13.
//  Copyright (c) 2013 Felipe Saint-Jean. All rights reserved.
//

#import "SHPGererator.h"
#import "SHPGlobals.h"

@implementation SHPGererator
/*
 
 SHPRectangle  = 1,
 SHPRoudedRect = 2,
 SHPTriangle   = 3,
 SHPCicle      = 4,
 SHPArrowUP   = 5,
 SHPArrowDOWN = 6,
 SHPArrouwRIGHT   = 7,
 SHPArrouwLEFT   = 8,
 */



+(UIBezierPath *)arrowRight:(CGSize)size{
    
    //// Bezier Drawing
   
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(0, 0)];
    [bezierPath addLineToPoint: CGPointMake(0, 1 * size.height)];
    [bezierPath addLineToPoint: CGPointMake(0.67* size.height, 0.76* size.height)];
    [bezierPath addLineToPoint: CGPointMake(0.68* size.height, 1* size.height)];
    [bezierPath addLineToPoint: CGPointMake(1* size.height, 0.47* size.height)];
    [bezierPath addLineToPoint: CGPointMake(0.67* size.height, 0* size.height)];
    [bezierPath addLineToPoint: CGPointMake(0.67* size.height, 0.21* size.height)];
    [bezierPath addLineToPoint: CGPointMake(0, 0)];
    [bezierPath closePath];
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    
    
    
    return bezierPath;
}
+(UIBezierPath *)arrowUp:(CGSize)size{
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(1, 1)];
    [bezierPath addLineToPoint: CGPointMake(0, 1)];
    [bezierPath addLineToPoint: CGPointMake(0.24, 0.33)];
    [bezierPath addLineToPoint: CGPointMake(0, 0.32)];
    [bezierPath addLineToPoint: CGPointMake(0.53, 0)];
    [bezierPath addLineToPoint: CGPointMake(1, 0.33)];
    [bezierPath addLineToPoint: CGPointMake(0.79, 0.33)];
    [bezierPath addLineToPoint: CGPointMake(1, 1)];
    [bezierPath closePath];
    bezierPath.lineJoinStyle = kCGLineJoinRound;

    
    [bezierPath applyTransform:CGAffineTransformMakeScale(size.width, size.height)];
    return bezierPath;

}

+(UIBezierPath *)arrowDown:(CGSize)size{
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(0, 0)];
    [bezierPath addLineToPoint: CGPointMake(1, 0)];
    [bezierPath addLineToPoint: CGPointMake(0.76, 0.67)];
    [bezierPath addLineToPoint: CGPointMake(1, 0.68)];
    [bezierPath addLineToPoint: CGPointMake(0.47, 1)];
    [bezierPath addLineToPoint: CGPointMake(0, 0.67)];
    [bezierPath addLineToPoint: CGPointMake(0.21, 0.67)];
    [bezierPath addLineToPoint: CGPointMake(0, 0)];
    [bezierPath closePath];
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    
    [bezierPath applyTransform:CGAffineTransformMakeScale(size.width, size.height)];
    return bezierPath;
    
}

+(UIBezierPath *)arrowLeft:(CGSize)size{
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(1, 0)];
    [bezierPath addLineToPoint: CGPointMake(1, 1)];
    [bezierPath addLineToPoint: CGPointMake(0.33, 0.76)];
    [bezierPath addLineToPoint: CGPointMake(0.32, 1)];
    [bezierPath addLineToPoint: CGPointMake(0, 0.47)];
    [bezierPath addLineToPoint: CGPointMake(0.33, 0)];
    [bezierPath addLineToPoint: CGPointMake(0.33, 0.21)];
    [bezierPath addLineToPoint: CGPointMake(1, 0)];
    [bezierPath closePath];
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    [bezierPath applyTransform:CGAffineTransformMakeScale(size.width, size.height)];
    return bezierPath;
}

+(UIBezierPath *)shapeStar:(CGSize)size{
    UIBezierPath* starPath = [UIBezierPath bezierPath];
    [starPath moveToPoint: CGPointMake(0.5, 0)];
    [starPath addLineToPoint: CGPointMake(0.68, 0.25)];
    [starPath addLineToPoint: CGPointMake(0.98, 0.35)];
    [starPath addLineToPoint: CGPointMake(0.8, 0.6)];
    [starPath addLineToPoint: CGPointMake(0.79, 0.9)];
    [starPath addLineToPoint: CGPointMake(0.5, 0.81)];
    [starPath addLineToPoint: CGPointMake(0.21, 0.9)];
    [starPath addLineToPoint: CGPointMake(0.2, 0.6)];
    [starPath addLineToPoint: CGPointMake(0.02, 0.35)];
    [starPath addLineToPoint: CGPointMake(0.32, 0.25)];
    [starPath closePath];
    [starPath applyTransform:CGAffineTransformMakeScale(size.width, size.height)];
    return starPath;
}

+(UIBezierPath *)shapeHex:(CGSize)size{
    UIBezierPath* polygonPath = [UIBezierPath bezierPath];
    [polygonPath moveToPoint: CGPointMake(0.5, 0)];
    [polygonPath addLineToPoint: CGPointMake(0.98, 0.35)];
    [polygonPath addLineToPoint: CGPointMake(0.79, 0.9)];
    [polygonPath addLineToPoint: CGPointMake(0.21, 0.9)];
    [polygonPath addLineToPoint: CGPointMake(0.02, 0.35)];
    [polygonPath closePath];
    [polygonPath applyTransform:CGAffineTransformMakeScale(size.width, size.height)];
    return polygonPath;
}
+(UIBezierPath *)shapeTriangle:(CGSize)size{
    UIBezierPath* polygonPath = [UIBezierPath bezierPath];
    [polygonPath moveToPoint: CGPointMake(0.5, 0)];
    [polygonPath addLineToPoint: CGPointMake(0.93, 0.75)];
    [polygonPath addLineToPoint: CGPointMake(0.07, 0.75)];
    [polygonPath closePath];
    [polygonPath applyTransform:CGAffineTransformMakeScale(size.width, size.height)];
    return polygonPath;
}
+(CGRect)frameForText:(SHPShape)shape ofSize:(CGSize)size{
    CGRect text_frame = CGRectZero;
    text_frame.size = size;
    text_frame = CGRectInset(text_frame, 10.0, 10.0);
    return text_frame;
}
+(UIBezierPath *)pathFor:(SHPShape)shape ofSize:(CGSize)size{
    CGRect r = CGRectZero;
    r.size = size;
    switch (shape) {
            
        case SHPRectangle:
            return [UIBezierPath bezierPathWithRoundedRect:r cornerRadius:1.0];
            break;
        case SHPRoudedRect:
            return [UIBezierPath bezierPathWithRoundedRect:r cornerRadius:size.width / 10.0];
            break;
        case SHPTriangle:
            return [SHPGererator shapeTriangle:size];
            break;
        case SHPCicle:
            return [UIBezierPath bezierPathWithOvalInRect:r];
            break;
        case SHPArrowUP:
            return [SHPGererator arrowUp:size];
            break;
        case SHPArrowDOWN:
            return [SHPGererator arrowDown:size];
            break;
        case SHPArrowRIGHT:
            return [SHPGererator arrowRight:size];
            break;
        case SHPArrowLEFT:
            return [SHPGererator arrowLeft:size];
            break;
        case SHPStar:
            return [SHPGererator shapeStar:size];
            break;
        case SHPHex:
            return [SHPGererator shapeHex:size];
            break;
        case SHPNoShape:
            return nil;
            break;
        default:
            break;
    }
    return [UIBezierPath bezierPathWithRoundedRect:r cornerRadius:20.0];
}

+(CGRect)textAreaFor:(SHPShape)shape ofSize:(CGSize)size{
    CGRect r = CGRectZero;
    r.size = size;
    switch (shape) {
            
        case SHPRectangle:
            r = CGRectMake(0.025391 * r.size.width ,0.123047 * r.size.height,0.957031 * r.size.width,0.679688 * r.size.height);
            break;
        case SHPRoudedRect:
            r =  CGRectMake(0.035156 * r.size.width ,0.158203 * r.size.height,0.927734 * r.size.width,0.634766 * r.size.height);
            break;
        case SHPTriangle:
            r = CGRectMake(0.292969 * r.size.width ,0.414062 * r.size.height,0.492188 * r.size.width,0.298828 * r.size.height);
            CGRectMake(0.302734 * r.size.width ,0.394531 * r.size.height,0.513672 * r.size.width,0.337891 * r.size.height);
            break;
        case SHPCicle:
            r = CGRectMake(0.152344 * r.size.width ,0.173828 * r.size.height,0.738281 * r.size.width,0.609375 * r.size.height);
            break;
        case SHPArrowUP:
            r = CGRectMake(0.203125 * r.size.width ,0.472656 * r.size.height,0.675781 * r.size.width,0.468750 * r.size.height);
            break;
        case SHPArrowDOWN:
            r = CGRectMake(0.171875 * r.size.width ,0.113281 * r.size.height,0.617188 * r.size.width,0.410156 * r.size.height);
            break;
        case SHPArrowRIGHT:
            r = CGRectMake(0.023438 * r.size.width ,0.240234 * r.size.height,0.792969 * r.size.width,0.482422 * r.size.height);
            break;
        case SHPArrowLEFT:
            r = CGRectMake(0.183594 * r.size.width ,0.259766 * r.size.height,0.785156 * r.size.width,0.478516 * r.size.height);

            break;
        case SHPStar:
            r = CGRectMake(0.216797 * r.size.width ,0.300781 * r.size.height,0.568359 * r.size.width,0.453125 * r.size.height);
            break;
        case SHPHex:
            r =  CGRectMake(0.173828 * r.size.width ,0.265625 * r.size.height,0.652344 * r.size.width,0.486328 * r.size.height);
            break;
        case SHPNoShape:
            //Should be  r = r;
            break;
        default:
            break;
    }
    return r;
}

+ (NSInteger)binarySearchForFontSizeForText:(NSString *)text withMinFontSize:(NSInteger)minFontSize withMaxFontSize:(NSInteger)maxFontSize withSize:(CGSize)size font:(UIFont *)in_font
{
    // If the sizes are incorrect, return 0, or error, or an assertion.
    if (maxFontSize < minFontSize)
        return minFontSize-1.0;
    
    // Find the middle
    NSInteger fontSize = (minFontSize + maxFontSize) / 2;
    // Create the font
    UIFont *font = [UIFont fontWithName:in_font.fontName size:fontSize];//[UIFont boldSystemFontOfSize:fontSize];
    // Create a constraint size with max height
    CGSize constraintSize = CGSizeMake(size.width, MAXFLOAT);
    // Find label size for current font size
    CGSize labelSize = [text sizeWithFont:font
                        constrainedToSize:constraintSize
                            lineBreakMode:NSLineBreakByWordWrapping];
    NSLog(@"%d %d %d",minFontSize,fontSize,maxFontSize);
    // EDIT:  The next block is modified from the original answer posted in SO to consider the width in the decision. This works much better for certain labels that are too thin and were giving bad results.
    if( labelSize.height <= size.height && ABS(labelSize.height - size.height)<10.0){
        //NSLog(@"'%@' LabelSize: (%f x %f) Font imprint: (%f x %f)", text, labelSize.width, labelSize.height, size.width, size.height);
        return fontSize;
    } else if( labelSize.height > size.height || labelSize.width > size.width)
        return [self binarySearchForFontSizeForText:text withMinFontSize:minFontSize withMaxFontSize:fontSize-1 withSize:size font:font];
    else
        return [self binarySearchForFontSizeForText:text withMinFontSize:fontSize+1 withMaxFontSize:maxFontSize withSize:size font:font];
}

+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColor:(UIColor *)fill borderColor:(UIColor *)border borderWidth:(CGFloat)width text:(NSString *)text textColor:(UIColor *)text_color font:(UIFont *)font{
    
    CGRect content = CGRectZero;
    content.size = size;
    
    
    content = CGRectInset(content, 10.0, 10.0);
    UIGraphicsBeginImageContext(size);
   
    UIBezierPath *p = [self pathFor:shape ofSize:content.size];
    [p applyTransform:CGAffineTransformMakeTranslation(content.origin.x, content.origin.y)];
    [fill setFill];
    [border setStroke];
    p.lineWidth = width;
    [p fill];
    [p stroke];
    
    // draw the text
    CGRect text_rect = [SHPGererator textAreaFor:shape ofSize:size];
    
    NSInteger font_size = [SHPGererator binarySearchForFontSizeForText:text withMinFontSize:4 withMaxFontSize:400 withSize:text_rect.size font:font];
    
    UIFont *resized_font = [UIFont fontWithName:font.fontName size:font_size];
    CGSize text_size = [text sizeWithFont:resized_font constrainedToSize:text_rect.size lineBreakMode:NSLineBreakByWordWrapping];
    
    NSLog(@"(%f %f) (%f %f)",text_rect.size.width,text_rect.size.height,text_size.width,text_size.height);
    
    
    
    text_rect = [SHPGererator textAreaFor:shape ofSize:size];
    
    //CGRectInset(text_rect, 0, (text_rect.size.height - text_size.height)/2.0);
    
    [text_color setFill];
    
    text_rect.origin.y = text_rect.origin.y + (text_rect.size.height - text_size.height)/2.0;
    
    [text drawInRect:text_rect withFont:resized_font lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];

    // DEBUG
    //UIBezierPath *pp = [UIBezierPath bezierPathWithRect:text_rect];
    //[pp stroke];

    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

+(UIImage *)makeShape:(SHPShape)shape ofSize:(CGSize)size fillColorRGB:(int)fill borderColorRGB:(int)border borderWidth:(CGFloat)width text:(NSString *)text textColorRGB:(int)text_color font:(UIFont *)font{
    
    return [SHPGererator makeShape:shape ofSize:size fillColor:UIColorFromRGB(fill) borderColor:UIColorFromRGB(border)
                       borderWidth:width text:text textColor:UIColorFromRGB(text_color) font:font];
}
@end
