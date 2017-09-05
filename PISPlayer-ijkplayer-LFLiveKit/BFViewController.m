//
//  BFViewController.m
//  PISPlayer
//
//  Created by PisK on 2017/9/4.
//  Copyright © 2017年 PisK. All rights reserved.
//

#import "BFViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface BFViewController ()

@end

@implementation BFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    // 拉流地址
    NSURL *url = [NSURL URLWithString:@"rtmp://203.207.99.19:1935/live/CCTV1"];
    
    // 创建IJKFFMoviePlayerController：专门用来直播，传入拉流地址就好了
    IJKFFMoviePlayerController *playerVc = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:nil];
    
    // 准备播放
    [playerVc prepareToPlay];
    
    playerVc.view.frame = [UIScreen mainScreen].bounds;
    
    [self.view insertSubview:playerVc.view atIndex:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
