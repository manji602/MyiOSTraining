//
//  SampleViewController.h
//  NSFileManagerSample
//
//  Created by Jun Hashimoto on 2014/04/28.
//
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController
<
UITextFieldDelegate
>

@property (nonatomic, weak) IBOutlet UITextField *textField1;
@property (nonatomic, weak) IBOutlet UITextField *textField2;
@property (nonatomic, weak) IBOutlet UIButton *loadButton;
@property (nonatomic, weak) IBOutlet UIButton *saveButton;
@property (nonatomic, weak) IBOutlet UIButton *deleteButton;

- (IBAction)onClickLoadButton;
- (IBAction)onClickSaveButton;
- (IBAction)onClickDeleteButton;


@end
