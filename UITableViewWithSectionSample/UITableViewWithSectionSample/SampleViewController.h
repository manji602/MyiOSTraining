//
//  SampleViewController.h
//  UITableViewWithSectionSample
//
//  Created by 橋本 淳 on 2014/03/12.
//
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
