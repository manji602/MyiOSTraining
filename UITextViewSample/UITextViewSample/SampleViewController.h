//
//  SampleViewController.h
//  UITextViewSample
//
//  Created by Jun Hashimoto on 2014/04/28.
//
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController
<
UITextFieldDelegate,
UITextViewDelegate
>

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UITextView *textViewUpper;
@property (nonatomic, weak) IBOutlet UITextView *textViewLower;
@property (nonatomic, weak) IBOutlet UILabel *textFieldCounterLabel;
@property (nonatomic, weak) IBOutlet UILabel *textViewCounterLabel;

@end
