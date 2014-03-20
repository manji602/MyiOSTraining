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
    
    //plistの読み込み
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"sampleData" ofType:@"plist"];
    _elements = [NSArray arrayWithContentsOfFile:plistPath];
    
    // UIRefreshControlの生成
    self.refreshControl = [[UIRefreshControl alloc] init];

    // refreshControllがforControlEvents:UIControlEventValueChangedを発火した時に受け取るメソッドをneedRefreshにする
    [_refreshControl addTarget:self action:@selector(needRefresh:) forControlEvents:UIControlEventValueChanged];
    
    // tableViewControllerのrefeshControlとしてセット
    [self.tableView addSubview:_refreshControl];
    
    //custom cell
    [_tableView registerNib:[UINib nibWithNibName:@"SampleTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    
    _customCell = [_tableView dequeueReusableCellWithIdentifier:@"Cell"];
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
    SampleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell"];

    NSString *text = [_elements objectAtIndex: indexPath.row];

    cell.labelText.text = text;
    cell.labelText.numberOfLines = 0;
    [cell.labelText sizeToFit];

    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SampleTableViewCell *cell = (SampleTableViewCell*)[self tableView:_tableView cellForRowAtIndexPath:indexPath];
    return cell.height;
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
