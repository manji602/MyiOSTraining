//
//  MixiViewController.h
//  UINavigationControllerSample
//
//  Created by 橋本 淳 on 2014/03/07.
//
//

#import <UIKit/UIKit.h>

@interface MixiViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIButton *button;
@property (nonatomic, strong) IBOutlet UINavigationBar *navigationBar;

-(IBAction)didClickButton;

@end
