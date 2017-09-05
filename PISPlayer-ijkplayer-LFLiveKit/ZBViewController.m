//
//  ZBViewController.m
//  PISPlayer
//
//  Created by PisK on 2017/9/4.
//  Copyright © 2017年 PisK. All rights reserved.
//

#import "ZBViewController.h"
#import "LFLivePreview.h"

@interface ZBViewController ()

@end

@implementation ZBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    LFLivePreview *vc = [[LFLivePreview alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:vc];

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
