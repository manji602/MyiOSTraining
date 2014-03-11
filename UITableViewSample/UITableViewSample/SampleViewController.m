//
//  SampleViewController.m
//  UITableViewSample
//
//  Created by 橋本 淳 on 2014/03/10.
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
        self.tableView = [[UITableView alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _tableView.delegate = self;
    _tableView.dataSource = self;
    self.title = [NSString stringWithFormat:@"window %d", [self.navigationController.viewControllers count]];
    [_tableView registerNib:[UINib nibWithNibName:@"SampleTableCell" bundle:nil] forCellReuseIdentifier:@"Cell"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SampleTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.labelText1.text = @"ﾊﾁ";
    cell.labelText2.text = [NSString stringWithFormat:@"ﾎｹﾞ %d", indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SampleViewController *viewController = [[SampleViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
