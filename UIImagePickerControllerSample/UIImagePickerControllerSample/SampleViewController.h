//
//  SampleViewController.h
//  UIImagePickerControllerSample
//
//  Created by 橋本 淳 on 2014/03/26.
//
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic,strong) IBOutlet UIButton *button;
@property (nonatomic,strong) IBOutlet UIImageView *image;

- (IBAction)didClickButton:(id)sender;

@end
