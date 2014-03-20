//
//  SampleTableViewCell.h
//  UITableViewSampleWithPullToRefresh
//
//  Created by 橋本 淳 on 2014/03/19.
//
//

#import <UIKit/UIKit.h>

@interface SampleTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *labelText;

- (CGFloat)height;
@end