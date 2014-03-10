//
//  SampleViewController.m
//  UITabControllerSample
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
        self.tabBarItem.image = [UIImage imageNamed:@"132-ghost.png"];
        self.tabBarItem.badgeValue = @"5";
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = [NSString stringWithFormat:@"window %d", [self.navigationController.viewControllers count]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) didClickButton:(id)sender
{
    [self.navigationController pushViewController:[[SampleViewController alloc] init] animated:YES];
}

@end
