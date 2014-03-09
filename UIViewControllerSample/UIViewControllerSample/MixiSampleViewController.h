//
//  MixiSampleViewController.h
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/05.
//
//

#import <UIKit/UIKit.h>
#import "MixiSampleChildViewController.h"
#import "MySampleEntity.h"
#import "TestQueue.h"

@interface MixiSampleViewController : UIViewController <MixiChildViewControllerDelegate>

@property (nonatomic,retain) IBOutlet UIButton *okButton;
@property (nonatomic,strong) MixiSampleChildViewController *childVC;

- (IBAction)okButtonPush:(id)sender;
- (void)didTappedCloseButton;
- (void)openChildViewController;

@end
