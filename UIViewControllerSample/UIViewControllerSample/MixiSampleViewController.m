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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)okButtonPush:(id)sender {
    MixiSampleChildViewController *childVC = [[MixiSampleChildViewController alloc]init];
    childVC.delegate = self;
    [self presentViewController:childVC animated:YES completion:nil];
}

#pragma mark - MixiSampleChildViewControllerDelegate methods
- (void)didTappedCloseButton {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
}

@end
