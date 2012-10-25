//
//  UIImage+Antialiase.m
//  ImageAntialiase
//
//  Created by 谌启亮 on 12-10-25.
//  Copyright (c) 2012年 谌启亮. All rights reserved.
//

#import "UIImage+Antialiase.h"

@implementation UIImage (Antialiase)

//创建抗锯齿头像
- (UIImage*)antialiasedImage{
    return [self antialiasedImageOfSize:self.size scale:self.scale];
}

//创建抗锯齿头像,并调整大小和缩放比。
- (UIImage*)antialiasedImageOfSize:(CGSize)size scale:(CGFloat)scale{
    UIGraphicsBeginImageContextWithOptions(size, NO, scale);
    [self drawInRect:CGRectMake(1, 1, size.width-2, size.height-2)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
