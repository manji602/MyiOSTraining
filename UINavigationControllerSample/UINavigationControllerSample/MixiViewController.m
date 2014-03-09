//
//  MixiViewController.m
//  UINavigationControllerSample
//
//  Created by 橋本 淳 on 2014/03/07.
//
//

#import "MixiViewController.h"

@interface MixiViewController ()

@end

@implementation MixiViewController

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
    self.title = [NSString stringWithFormat:@"window %d", [self.navigationController.viewControllers count]];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)didClickButton
{
    NSLog(@"button clicked");
    [self.navigationController pushViewController:[[MixiViewController alloc] init] animated:YES];
}

@end
