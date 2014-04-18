//
//  SampleViewController.h
//  URLRequestSample
//
//  Created by Jun Hashimoto on 2014/04/18.
//  Copyright (c) 2014年 Jun Hashimoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *HTTPReqsponseLabel;
@property (nonatomic, weak) IBOutlet UIButton *HTTPRequestButton;

- (IBAction)onClickHTTPRequestButton;


@end
