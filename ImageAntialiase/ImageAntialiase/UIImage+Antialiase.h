//
//  UIImage+Antialiase.h
//  ImageAntialiase
//
//  Created by 谌启亮 on 12-10-25.
//  Copyright (c) 2012年 谌启亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Antialiase)

//创建抗锯齿头像
- (UIImage*)antialiasedImage;

//创建抗锯齿头像,并调整大小和缩放比。
- (UIImage*)antialiasedImageOfSize:(CGSize)size scale:(CGFloat)scale;

@end
