//
//  SampleTableViewCell.m
//  UITableViewSampleWithPullToRefresh
//
//  Created by 橋本 淳 on 2014/03/19.
//
//

#import "SampleTableViewCell.h"

@implementation SampleTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        NSLog(@"initialize");
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (CGFloat)height
{
    CGFloat minimumHeight = 80.0f;
    CGFloat padding       = 20.0f;
    CGFloat labelWidth    = self.labelText.bounds.size.width;
    CGFloat labelHeight   = self.labelText.bounds.size.height;

    UIFont *labelFont = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    CGSize bodySize = [self.labelText.text boundingRectWithSize:CGSizeMake(labelWidth, labelHeight)
                                                        options:NSStringDrawingUsesLineFragmentOrigin
                                                     attributes:[NSDictionary dictionaryWithObject:labelFont forKey:NSFontAttributeName]
                                                        context:nil].size;

    CGFloat calcHeight = bodySize.height + padding * 2;
    return minimumHeight > calcHeight ? minimumHeight : calcHeight;
}

@end
