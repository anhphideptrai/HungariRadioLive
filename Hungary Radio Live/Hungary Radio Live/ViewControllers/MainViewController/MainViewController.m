//
//  MainViewController.m
//  Hungary Radio Live
//
//  Created by Phi Nguyen on 12/20/14.
//  Copyright (c) 2014 Thien Nguyen. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UIButton *btChannel;
@property (strong, nonatomic) IBOutlet UISlider *sldVolume;
@property (strong, nonatomic) IBOutlet UIButton *btPlayOrPause;
@property (strong, nonatomic) IBOutlet UIButton *btPrevious;
@property (strong, nonatomic) IBOutlet UIButton *btNext;

- (IBAction)actionClickBTChannel:(id)sender;
- (IBAction)actionChangedVolume:(id)sender;
- (IBAction)actionClickBTPlayOrPause:(id)sender;
- (IBAction)actionBTPrevious:(id)sender;
- (IBAction)actionBTNext:(id)sender;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self.view setBackgroundColor:[UIColor grayColor]];
    [self indexFromPixels:[SlideNavigationController sharedInstance].portraitSlideOffset];
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
#pragma mark - SlideNavigationController Methods -

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}
#pragma mark - Helpers -

- (NSInteger)indexFromPixels:(NSInteger)pixels
{
    if (pixels == 60)
        return 0;
    else if (pixels == 120)
        return 1;
    else
        return 2;
}

- (NSInteger)pixelsFromIndex:(NSInteger)index
{
    switch (index)
    {
        case 0:
            return 60;
            
        case 1:
            return 120;
            
        case 2:
            return 200;
            
        default:
            return 0;
    }
}
- (IBAction)actionClickBTChannel:(id)sender {
}

- (IBAction)actionChangedVolume:(id)sender {
}

- (IBAction)actionClickBTPlayOrPause:(id)sender {
}

- (IBAction)actionBTPrevious:(id)sender {
}

- (IBAction)actionBTNext:(id)sender {
}
@end
