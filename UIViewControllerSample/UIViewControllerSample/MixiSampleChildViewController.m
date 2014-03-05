//
//  MixiSampleChildViewController.m
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/05.
//
//

#import "MixiSampleChildViewController.h"

@interface MixiSampleChildViewController ()

@end

@implementation MixiSampleChildViewController

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

- (IBAction)closeButtonPush:(id)sender{
    if([_delegate respondsToSelector:@selector(didTappedCloseButton)]) {
        [_delegate didTappedCloseButton];
    }
}

- (void)dealloc
{
}

@end
