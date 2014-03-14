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
    SampleTableViewController *tableViewController = [[SampleTableViewController alloc] initWithNibName:@"SampleTableViewController" bundle:nil];
    
    [self.subView addSubview:tableViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
