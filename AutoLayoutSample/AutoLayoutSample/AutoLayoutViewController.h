//
//  AutoLayoutViewController.h
//  AutoLayoutSample
//
//  Created by Jun Hashimoto on 2014/04/22.
//  Copyright (c) 2014年 Jun Hashimoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoLayoutViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *hashijunButton;
@property (nonatomic, weak) IBOutlet UILabel *rokushimaLabel;

- (IBAction) clickHashijunButton;

@end
