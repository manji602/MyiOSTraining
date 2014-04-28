//
//  WebViewSampleViewController.h
//  UIWebViewSample
//
//  Created by Jun Hashimoto on 2014/04/28.
//
//

#import <UIKit/UIKit.h>

@interface WebViewSampleViewController : UIViewController
<
UINavigationBarDelegate,
UIWebViewDelegate
>

@property (nonatomic, weak) IBOutlet UINavigationBar *navigationBar;
@property (nonatomic, weak) IBOutlet UIWebView *webView;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *previousButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *nextButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *reloadButton;

- (IBAction)onClickPreviousButton;
- (IBAction)onClickNextButton;
- (IBAction)onClickReloadButton;

@end
