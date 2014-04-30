//
//  SampleViewController.m
//  NSFileManagerSample
//
//  Created by Jun Hashimoto on 2014/04/28.
//
//

#import "SampleViewController.h"

@interface SampleViewController ()
{
    NSURL *fileURL;
}
@end

@implementation SampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSURL *documentDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
        fileURL = [documentDirectoryURL URLByAppendingPathComponent:@"sample.plist"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - textField settings

- (void)loadFile
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if([fileManager fileExistsAtPath:fileURL.path]){
        NSDictionary *readDict = [NSDictionary dictionaryWithContentsOfURL:fileURL];
        _textField1.text = readDict[@"text1"];
        _textField2.text = readDict[@"text2"];
    }else{
        NSLog(@"not exist");
    }
}

- (void)saveFile
{
    NSDictionary *savedDict = @{@"text1":_textField1.text,
                                @"text2":_textField2.text};
    [savedDict writeToURL:fileURL atomically:YES];
}

- (void)deleteFile
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if([fileManager fileExistsAtPath:fileURL.path]){
        NSError *error = nil;
        [fileManager removeItemAtURL:fileURL error:&error];
    }else{
        NSLog(@"not exist");
    }
}

# pragma mark - IBAction

- (IBAction)onClickLoadButton
{
    [self loadFile];
    NSLog(@"load succeedded.");
}

- (IBAction)onClickSaveButton
{
    [self saveFile];
    NSLog(@"save succeeded.");
}

- (IBAction)onClickDeleteButton
{
    [self deleteFile];
    NSLog(@"delete succeeded.");
}

# pragma mark - UITextField delegate

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
