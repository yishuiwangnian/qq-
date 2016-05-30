//
//  CQZviewController.m
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import "CQZviewController.h"
#import "CQZviewController6.h"
#import "CQZTableViewCell.h"

@implementation CQZviewController
@synthesize tableview;
@synthesize array;
-(void)viewDidLoad
{
    [super viewDidLoad];
   
    
    /* UIBarButtonItem *leftbutton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(selectLeftAction:)];
    
    
    self.navigationItem.leftBarButtonItem = leftbutton; */
    
    //NOTE:使用button来设置，可以自定义更多更方便
    //TODO:自己实现self.navigationController.navigationItem.rightBarButtonItem
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [leftButton addTarget:self action:@selector(selectLeftAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
    self.navigationController.navigationItem.leftBarButtonItem = left;
    /*NOTE: self.navigationItem.title = @"陈求樟的书库"; */
    //NOTE:直接设置self.title，navigationController push到那个vc就会使用那个vc的title属性来设置navigationItem.title
    self.title = @"陈求樟的书库";
    
    tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    tableview.delegate =self;
    tableview.dataSource = self;
    
    /* array = [NSArray arrayWithObjects:@"死亡开端",@"无限恐怖", nil]; */
    array = @[@"死亡开端",@"无限恐怖"];
    [self.view addSubview:tableview];
    
    //NOTE:iOS6之后新的cell注册方法
    [self.tableview registerClass:[CQZTableViewCell class] forCellReuseIdentifier:NSStringFromClass([CQZTableViewCell class])];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //定义个静态字符串为了防止与其他类的tableivew重复
//    static NSString *CellIdentifier = @"Cell";
    //定义cell的复用性当处理大量数据时减少内存开销
    
   // UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:CellIdentifier];
    /* CQZTableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"CQZTableViewCell"];
   if (cell ==nil)
    {
        
        cell = [[CQZTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
   } */
    
    //NOTE:在tableview 初始化的时候调用以下方法初始化，可以不用再做cell == nil 判断，框架内部会自动判断重用队列里面有没有该cell类型的可用对象，没有自动生成
    /* - (void)registerNib:(nullable UINib *)nib forCellReuseIdentifier:(NSString *)identifier NS_AVAILABLE_IOS(5_0);
    - (void)registerClass:(nullable Class)cellClass forCellReuseIdentifier:(NSString *)identifier NS_AVAILABLE_IOS(6_0);
    
    - (void)registerNib:(nullable UINib *)nib forHeaderFooterViewReuseIdentifier:(NSString *)identifier NS_AVAILABLE_IOS(6_0);
    - (void)registerClass:(nullable Class)aClass forHeaderFooterViewReuseIdentifier:(NSString *)identifier NS_AVAILABLE_IOS(6_0); */
    
     CQZTableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CQZTableViewCell class]) forIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
   
    cell.textLabel.text = [array objectAtIndex:[indexPath row]];  //通过 [indexPath row] 遍历数组
    
    //NOTE:编译器快捷方法 http://blog.csdn.net/ryantang03/article/details/8074002
    /* cell.textLabel.text = array[indexPath.row]; */
    return cell;
}

-(void)selectLeftAction:(id)sender
{
    CQZviewController6 *view = [CQZviewController6 new];//NOTE:viewcontroller的命名不要使用view，容易产生误解，命名后缀最好跟上对象类型，比如一个用于UILabel promptLabel
    [self.navigationController pushViewController:view animated:YES];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.backBarButtonItem = backButton;
    //使用UIButton 来自定义导航栏按钮
    view.title = @"个人";
}
@end
