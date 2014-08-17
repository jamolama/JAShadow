//
//  UIView+JAShadow.h
//  Pods
//
//  Created by Jeffrey Ames on 8/17/14.
//
//

#import <UIKit/UIKit.h>

@interface UIView (JAShadow)

- (void)ja_setShadowWithColor:(UIColor *)color opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset shouldDrawPath:(BOOL)shouldDrawPath;

- (void)ja_setShadowWithColor:(UIColor *)color opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset path:(UIBezierPath *)path;

@end
