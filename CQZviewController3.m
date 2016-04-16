//
//  CQZviewController3.m
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import "CQZviewController3.h"
#import "CQZviewController6.h"
@implementation CQZviewController3
-(void)viewDidLoad
{
    [super viewDidLoad];
   
    UIBarButtonItem *leftbutton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(selectLeftAction:)];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(selectRightAction:)];
   
    self.navigationItem.rightBarButtonItem =rightButton;
    self.navigationItem.leftBarButtonItem = leftbutton;
    
    self.navigationItem.title = @"陈求樟的个人阅读app";
    
}
-(void)selectRightAction:(id)sender
{
   
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"登录提示" message: @"发布书单需要登录，确定登录？"  delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

-(void)selectLeftAction:(id)sender
{
    CQZviewController6 *view = [CQZviewController6 new];
    [self.navigationController pushViewController:view animated:YES];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.backBarButtonItem = backButton;
    view.title = @"个人";
}

@end
