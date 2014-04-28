//
//  WebViewSampleViewController.m
//  UIWebViewSample
//
//  Created by Jun Hashimoto on 2014/04/28.
//
//

#import "WebViewSampleViewController.h"

@interface WebViewSampleViewController ()

@end

@implementation WebViewSampleViewController

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
    [self setWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebView settings

- (void) setWebView
{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://mixi.jp"]];
    [_webView loadRequest:request];
}

#pragma mark - UINavigationBar delegate

#pragma mark - UIWebView delegate

- (void) webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"start loading");
}

- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    _navigationBar.topItem.title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];

    _previousButton.enabled = webView.canGoBack;
    _nextButton.enabled = webView.canGoForward;
}

#pragma mark - UIBarButtonItem IBAction

- (IBAction)onClickPreviousButton
{
    [_webView goBack];
}

- (IBAction)onClickNextButton
{
    [_webView goForward];
}

- (IBAction)onClickReloadButton
{
    [_webView reload];
}

@end
