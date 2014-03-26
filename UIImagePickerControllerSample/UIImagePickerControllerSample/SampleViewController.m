//
//  SampleViewController.m
//  UIImagePickerControllerSample
//
//  Created by 橋本 淳 on 2014/03/26.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickButton:(id)sender
{
    UIImagePickerController *imagePickerVC = [[UIImagePickerController alloc] init];
    // UIImagePickerControllerSourceTypeSavedPhotosAlbum だと直接写真選択画面
    imagePickerVC.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    // 選択したメディアの編集を可能にするかどうか
    imagePickerVC.allowsEditing = YES;
    
    // 選択可能なメディアの制限 デフォルトは photo のみ。
    // movie を選択可能にするには
    // imagePickerVC.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:imagePickerVC.sourceType];
    imagePickerVC.delegate = self;
    [self presentViewController:imagePickerVC animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"setimage");
    
    [self.image setImage:info[UIImagePickerControllerOriginalImage]];
//    [_photoImageView setImage:info[UIImagePickerControllerOriginalImage]];
}

@end
