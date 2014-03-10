//
//  SampleViewController.h
//  UITableViewSample
//
//  Created by 橋本 淳 on 2014/03/10.
//
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) IBOutlet UIButton *button;

@end
