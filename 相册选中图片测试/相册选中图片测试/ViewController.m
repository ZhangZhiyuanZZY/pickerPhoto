//
//  ViewController.m
//  相册选中图片测试
//
//  Created by 章芝源 on 15/12/25.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ViewController.h"
#import "ZYPhotoController.h"
@interface ViewController ()<UINavigationControllerDelegate ,UIImagePickerControllerDelegate>
//选择照片按钮
@property (weak, nonatomic) IBOutlet UIButton *pickPhoto;
//展示图片控制器
@property(nonatomic, strong)ZYPhotoController *photoC;

@end

@implementation ViewController

#pragma mark - 懒加载
- (ZYPhotoController *)photoC
{
    if (!_photoC) {
        _photoC = [[ZYPhotoController alloc]init];
    }
    return _photoC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)pickerPhoto:(id)sender {

    [self pickOnePhoto];
}



- (void)pickOnePhoto
{
    //创建相片选择控制器
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    //设置相册类型
    imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    imagePicker.delegate = self;
    //弹出控制器
    [self presentViewController:imagePicker animated:YES completion:nil];
}

//选择照片之后
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
   //获得照片
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    //传递图片
    self.photoC.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //展示图片
    [self showPhoto];
}

- (void)showPhoto
{
    [self.photoC setupPhoto];
    [self presentViewController:self.photoC animated:YES completion:nil];
}

@end
