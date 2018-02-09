//
//  Image.h
//  demo
//
//  Created by CPU11197-local on 1/19/18.
//  Copyright © 2018 CPU11197-local. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage(demo)
+ (UIImage *)imageWithImage:(UIImage *)image scaleToSize:(CGSize)size;
-(UIImage *)imageMaskedWithColor:(UIColor *)maskColor;
+ (UIImage *)jsq_imageWithInitials:(NSString *)initials
                   backgroundColor:(UIColor *)backgroundColor
                         textColor:(UIColor *)textColor
                              font:(UIFont *)font;
@end
