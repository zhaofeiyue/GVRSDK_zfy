//
//  ViewController.m
//  VRImage_Demo
//
//  Created by 赵飞跃 on 16/11/30.
//  Copyright © 2016年 赵飞跃. All rights reserved.
//

#import "ViewController.h"
#import "GVRPanoramaView.h"
@interface ViewController ()<GVRWidgetViewDelegate>
@property (nonatomic ,strong)GVRPanoramaView*panoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.panoView = [[GVRPanoramaView alloc] initWithFrame:CGRectMake(0, 0, 375, 375 / 2)];
    self.panoView.delegate = self;
    self.panoView.enableFullscreenButton = YES;
    self.panoView.enableCardboardButton = YES;
    self.panoView.enableTouchTracking = YES;
    self.panoView.accessibilityElementsHidden = NO;
    [self.panoView.subviews[3] removeFromSuperview];
    
//    UIView *maskView = [[UIView alloc]init];
//    maskView.frame = CGRectMake(0, 375 / 2 - 40 * 3, padding * 4, padding * 2.5);
//    maskView.backgroundColor = [UIColor clearColor];
//    [self.panoView addSubview:maskView];
    
    [self.panoView loadImage:[UIImage imageNamed:@"scrennTest.jpg"]
                      ofType:kGVRPanoramaImageTypeStereoOverUnder];
    [self.view addSubview:self.panoView];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)MyGitTest{
    ///////////////
}


- (void)MyGitTest2{
    ///////////////
}


- (void)MyGitTest3{
    ///////////////
   // 、、、、、、、、、
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
