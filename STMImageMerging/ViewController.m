//
//  ViewController.m
//  STMImageMerging
//
//  Created by suntongmian on 16/3/18.
//  Copyright © 2016年 suntongmian@163.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIImageView             *mergeImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *supermanImage = [UIImage imageNamed:@"superman.png"];
    UIImage *moneyImage = [UIImage imageNamed:@"money.png"];
    
    CGSize supermanSize = [supermanImage size];
    CGSize moneySize = [moneyImage size];
    
//    NSLog(@"s : %f,%f \n m : %f,%f", supermanSize.width, supermanSize.height, moneySize.width, moneySize.height);
    
    UIGraphicsBeginImageContext(supermanSize);
    
    [supermanImage drawInRect:CGRectMake(0, 0, supermanSize.width, supermanSize.height)];
    [moneyImage drawInRect:CGRectMake(0, 0, moneySize.width, moneySize.height)];
    
    UIImage *mergeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    mergeImageView = [[UIImageView alloc] init];
    mergeImageView.image = mergeImage;
    mergeImageView.frame = self.view.bounds;
    [self.view addSubview:mergeImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

