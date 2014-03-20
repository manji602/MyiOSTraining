//
//  SampleViewController.h
//  UITableViewSampleWithPullToRefresh
//
//  Created by 橋本 淳 on 2014/03/12.
//
//

#import <UIKit/UIKit.h>
#import "SampleTableViewCell.h"

@interface SampleViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UIScrollView *subView;
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *elements;
@property (nonatomic, strong) UIRefreshControl *refreshControl;
@property (nonatomic, strong) SampleTableViewCell *customCell;
@end
