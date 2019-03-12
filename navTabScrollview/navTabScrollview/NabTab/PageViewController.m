//
//  PageViewController.m
//  navTabScrollview
//
//  Created by cctv-person on 2018/5/23.
//  Copyright © 2018年 cctv-person. All rights reserved.
//

#import "PageViewController.h"
#import "PageTableViewCell.h"
@interface PageViewController ()<UITableViewDelegate , UITableViewDataSource>
@property (nonatomic , strong) UITableView *myTabelView;

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置背景随机颜色
    int R = (arc4random() % 256);
    int G = (arc4random() % 256);
    int B = (arc4random() % 256);
    self.view.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
    [self.view addSubview:self.myTabelView];
}
- (UITableView *)myTabelView{
    if (!_myTabelView) {
        _myTabelView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        _myTabelView.tableFooterView = [UIView new];
        _myTabelView.separatorStyle= UITableViewCellSeparatorStyleNone;
        _myTabelView.showsHorizontalScrollIndicator = NO;
        _myTabelView.showsVerticalScrollIndicator = NO;
        _myTabelView.bounces = NO;
        _myTabelView.delegate = self;
        _myTabelView.dataSource = self;
        [_myTabelView registerClass:[PageTableViewCell class] forCellReuseIdentifier:@"PageTableViewCellReuser"];
    }
    return _myTabelView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PageTableViewCellReuser"];
    if (!cell) {
        cell = [[PageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"PageTableViewCellReuser"];
    }
    // Configure the cell...
    
    return cell;
}

// 外部设置标题，重写属性的set函数
- (void)setTitle:(NSString *)title
{
    // 添加label
    UILabel *label = [[UILabel alloc] init];
    label.text = title;
    label.textColor = [UIColor whiteColor];
    label.frame = CGRectMake(150, 300, 100, 50);
    [self.view addSubview:label];
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
