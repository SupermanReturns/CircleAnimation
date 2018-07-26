//
//  ViewController.m
//  CircleAnimation
//
//  Created by Superman on 2018/7/26.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"
#import "CircleAnimationView.h"
#import "UIView+Extensions.h"

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

@interface ViewController ()
@property (nonatomic, strong) CircleAnimationView *circleProgressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.circleProgressView = [[CircleAnimationView alloc] initWithFrame:CGRectMake(40.f, 70.f, SCREEN_WIDTH - 80.f, SCREEN_WIDTH - 80.f)];
    self.circleProgressView.bgImage = [UIImage imageNamed:@"backgroundImage"];
    
    self.circleProgressView.percent = 0.f;
    [self.view addSubview:self.circleProgressView];
    
    UIButton *stareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    stareButton.frame = CGRectMake(10.f, self.circleProgressView.bottom + 50.f, SCREEN_WIDTH - 20.f, 38.f);
    [stareButton addTarget:self action:@selector(onStareButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [stareButton setTitle:@"Stare Animation" forState:UIControlStateNormal];
    [stareButton setBackgroundColor:[UIColor lightGrayColor]];
    stareButton.layer.masksToBounds = YES;
    stareButton.layer.cornerRadius = 4.f;
    [self.view addSubview:stareButton];
}
- (void)onStareButtonClick {
    
    self.circleProgressView.percent = 90.f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
