//
//  SentryCrumbsViewController.m
//  SentryStudy
//
//  Created by stormmyzhao on 2018/11/2.
//  Copyright © 2018 studydaily. All rights reserved.
//

#import "SentryCrumbsViewController.h"

@interface SentryCrumbsViewController ()

@end

@implementation SentryCrumbsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Sentry Crumbs";
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 150, 100, 50)];
    [btn setTitle:@"Crumbs" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
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
