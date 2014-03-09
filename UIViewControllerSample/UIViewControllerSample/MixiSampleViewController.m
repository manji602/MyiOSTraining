//
//  MixiSampleViewController.m
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/05.
//
//

#import "MixiSampleViewController.h"

@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController

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
    MySampleEntity *entity = [[MySampleEntity alloc] init];
    NSLog(@"entity %@", entity.entry);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)okButtonPush:(id)sender {
    [self openChildViewController];
}

- (void)openChildViewController {
    MixiSampleChildViewController *childVC = [[MixiSampleChildViewController alloc]init];
    childVC.delegate = self;
    [self presentViewController:childVC animated:YES completion:nil];
}

#pragma mark - MixiSampleChildViewControllerDelegate methods
- (void)didTappedCloseButton {
    [self dismissViewControllerAnimated:YES completion:^(void){ [self openChildViewController]; }];
}

- (void)dealloc {
}

@end
