//
//  MixiSampleChildViewController.h
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/05.
//
//

#import <UIKit/UIKit.h>

@protocol MixiChildViewControllerDelegate <NSObject>
-(void)didTappedCloseButton;
@end

@interface MixiSampleChildViewController : UIViewController

@property (nonatomic, weak) id<MixiChildViewControllerDelegate> delegate;
@property (nonatomic, strong) IBOutlet UIButton *closeButton;

- (IBAction)closeButtonPush:(id)sender;

@end
