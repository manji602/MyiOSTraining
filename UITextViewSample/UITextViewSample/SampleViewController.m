//
//  SampleViewController.m
//  UITextViewSample
//
//  Created by Jun Hashimoto on 2014/04/28.
//
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

    [self setTextField];
    [self setUpperTextView];
    [self setLowerTextView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField setting
- (void)setTextField
{
    _textField.clearButtonMode = UITextFieldViewModeWhileEditing;
}

#pragma mark - UITextView setting
- (void)setUpperTextView
{

}

- (void)setLowerTextView
{
    _textViewLower.text = @"http://mixi.jp";
    _textViewLower.editable = NO;
}

#pragma mark - UITextFieldDelegate

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    _textFieldCounterLabel.text = [[NSString alloc] initWithFormat:@"%d", [textField.text length]];
}

#pragma mark - UITextViewDelegate

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

    _textViewCounterLabel.text = [[NSString alloc] initWithFormat:@"%d", [textView.text length]];
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
	return YES;
}

@end
