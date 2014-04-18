//
//  SampleViewController.m
//  URLRequestSample
//
//  Created by Jun Hashimoto on 2014/04/18.
//  Copyright (c) 2014年 Jun Hashimoto. All rights reserved.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickHTTPRequestButton
{
    NSURL *url = [NSURL URLWithString:@"http://manji602.com"];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSOperationQueue *queue = [NSOperationQueue new];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data,NSError *connectionError){
        if (!connectionError) {
            dispatch_async(dispatch_get_main_queue(),^{
                NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"response %@", responseString);
                _HTTPReqsponseLabel.text = responseString;
            });
        }
    }];
}


@end
