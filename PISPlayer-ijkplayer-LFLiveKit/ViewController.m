//
//  ViewController.m
//  PISPlayer-ijkplayer-LFLiveKit
//
//  Created by PisK on 2017/9/5.
//  Copyright © 2017年 PisK. All rights reserved.
//

#import "ViewController.h"
#import "ZBViewController.h"
#import "BFViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *rtmpStr = @"rtmp://203.207.99.19:1935/live/CCTV1";
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(100, 200, 100, 50);
    bt.backgroundColor = [UIColor brownColor];
    [bt setTitle:@"播放拉流" forState:UIControlStateNormal];
    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeCustom];
    bt1.frame = CGRectMake(100, 400, 100, 50);
    bt1.backgroundColor = [UIColor magentaColor];
    [bt1 setTitle:@"推流" forState:UIControlStateNormal];
    [self.view addSubview:bt1];
    
    [bt1 addTarget:self action:@selector(tui2) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}


- (void)play
{
    BFViewController *vc = [[BFViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)tui2
{
    ZBViewController *vc = [[ZBViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
