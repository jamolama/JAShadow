//
//  UIView+JAShadow.m
//  Pods
//
//  Created by Jeffrey Ames on 8/17/14.
//
//

#import "UIView+JAShadow.h"

@implementation UIView (JAShadow)

- (void)ja_setShadowWithColor:(UIColor *)color opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset shouldDrawPath:(BOOL)shouldDrawPath
{
    UIBezierPath *path = shouldDrawPath ? [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.layer.cornerRadius] : nil;
    [self ja_setShadowWithColor:color opacity:opacity radius:radius offset:offset path:path];
    
}

- (void)ja_setShadowWithColor:(UIColor *)color opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset path:(UIBezierPath *)path
{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius = radius;
    self.layer.shadowOffset = offset;
    if (path) {
        self.layer.shadowPath = path.CGPath;
    }
    else {
        self.layer.shadowPath = nil;
    }
}

@end
