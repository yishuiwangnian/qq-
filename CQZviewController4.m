//
//  CQZviewController4.m
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import "CQZviewController4.h"
#import "CQZviewController6.h"
@implementation CQZviewController4
-(void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *leftbutton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftbutton;
    self.navigationItem.title = @"陈求樟的个人阅读app";
    
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
