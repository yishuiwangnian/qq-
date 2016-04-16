//
//  CQZviewController.m
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import "CQZviewController.h"
#import "CQZviewController6.h"
@implementation CQZviewController
@synthesize tableview;
@synthesize array;
-(void)viewDidLoad
{
    [super viewDidLoad];
   
    
    UIBarButtonItem *leftbutton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftbutton;
    self.navigationItem.title = @"陈求樟的书库";
    
    tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    tableview.delegate =self;
    tableview.dataSource = self;
    array = [NSArray arrayWithObjects:@"死亡开端",@"无限恐怖", nil];
    [self.view addSubview:tableview];
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //定义个静态字符串为了防止与其他类的tableivew重复
    static NSString *CellIdentifier = @"Cell";
    //定义cell的复用性当处理大量数据时减少内存开销
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell ==nil)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    cell.textLabel.text = [array objectAtIndex:[indexPath row]];  //通过 [indexPath row] 遍历数组
    
    
    
    return cell;
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
