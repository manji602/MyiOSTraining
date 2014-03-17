//
//  SampleViewController.m
//  UITableViewSampleWithPullToRefresh
//
//  Created by 橋本 淳 on 2014/03/12.
//
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tableView.dataSource = self;
    self.tableView.delegate   = self;
    
    // UIRefreshControlの生成
    self.refreshControl = [[UIRefreshControl alloc] init];

    // refreshControllがforControlEvents:UIControlEventValueChangedを発火した時に受け取るメソッドをneedRefreshにする
    [_refreshControl addTarget:self action:@selector(needRefresh:) forControlEvents:UIControlEventValueChanged];
    
    // tableViewControllerのrefeshControlとしてセット
    [self.tableView addSubview:_refreshControl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//tableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row]; // 何番目のセルかを表示させました
    return cell;
}

//refreshControl

- (void)needRefresh:(UIRefreshControl *)sender
{
    [self performSelector:@selector(finishRefresh) withObject:nil afterDelay:1.0];
}

- (void)finishRefresh
{
    [_refreshControl endRefreshing];
    NSLog(@"finish");
}

@end
