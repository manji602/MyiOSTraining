//
//  AutoLayoutViewController.m
//  AutoLayoutSample
//
//  Created by Jun Hashimoto on 2014/04/22.
//  Copyright (c) 2014年 Jun Hashimoto. All rights reserved.
//

#import "AutoLayoutViewController.h"

@interface AutoLayoutViewController ()

@end

@implementation AutoLayoutViewController

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


- (IBAction)clickHashijunButton
{
    if ([_rokushimaLabel.text isEqualToString:@"rokushima"]) {
        _rokushimaLabel.text = @"basi";
    } else {
        _rokushimaLabel.text = @"rokushima";
    }
}
@end
