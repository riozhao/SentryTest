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
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 150, 100, 50)];
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [UIColor blueColor].CGColor;
    
    [btn setTitle:@"Crumbs" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(makeCrash:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
}

- (void)makeCrash:(id)send{
 
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSString *value = nil;
    [dic setObject:value forKey:@"123"];
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
