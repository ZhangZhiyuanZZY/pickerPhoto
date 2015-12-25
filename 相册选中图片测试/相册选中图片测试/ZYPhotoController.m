//
//  ZYPhotoController.m
//  相册选中图片测试
//
//  Created by 章芝源 on 15/12/25.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ZYPhotoController.h"

@interface ZYPhotoController ()

@end

@implementation ZYPhotoController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setupPhoto
{
    UIImageView *imageV = [[UIImageView alloc]initWithImage:self.image];
    CGFloat W = [UIScreen mainScreen].bounds.size.width;
    CGFloat H = [UIScreen mainScreen].bounds.size.height;
    CGRect imageRect = CGRectMake(0, 0, W, H);
    imageV.frame = imageRect;
    
    //添加imageview照片到屏幕上
    [self.view addSubview:imageV];
}

@end
