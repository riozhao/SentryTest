//
//  ViewController.m
//  SentryStudy
//
//  Created by stormmyzhao on 2018/11/1.
//  Copyright © 2018 studydaily. All rights reserved.
//

#import "ViewController.h"
#include <vector>
#import <Sentry/Sentry.h>
#import "SentryCrumbsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Sentry Study";
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addActionButton:@"OC Crash" action:@selector(makeOCCrash:) marginY:50];
    
    [self addActionButton:@"C++ Crash" action:@selector(maekCplusCrash:) marginY:150];
    
    [self addActionButton:@"Report Event" action:@selector(reprotEvent:) marginY:250];
    
    [self addActionButton:@"Open Detail" action:@selector(openDetail:) marginY:250];
    
}

- (void)addActionButton:(NSString*)title action:(SEL)selector marginY:(CGFloat)y{
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(50, y, 100, 50)];
    [btn2 setTitle:title forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor greenColor]];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [btn2 addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn2];
}

- (void)makeOCCrash:(id)sender{
    
    NSArray *arry = @[@"sss"];
    NSString *item = [arry objectAtIndex:2];
}

- (void)maekCplusCrash:(id)sender{
    std::vector<int> vec;
    vec.push_back(1);
    vec.push_back(2);
    int item = vec.at(3);
}

- (void)reprotEvent:(id)sender{
    
    SentryEvent *event = [[SentryEvent alloc]initWithLevel:kSentrySeverityFatal];
    event.message = @"test message for sevent fatal";
    [[SentryClient sharedClient]sendEvent:event withCompletionHandler:NULL];
}

- (void)openDetail:(id)sender{
    
    SentryCrumbsViewController *detail = [[SentryCrumbsViewController alloc]init];
    [self.navigationController pushViewController:detail animated:YES];
}

@end
