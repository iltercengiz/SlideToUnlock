//
//  FirstViewController.m
//  SlideToUnlock
//
//  Created by Ilter Cengiz on 5/20/13.
//  Copyright (c) 2013 Ilter Cengiz. All rights reserved.
//

#import "FirstViewController.h"

#import "SlideToUnlockViewController.h"

@interface FirstViewController () <SlideToUnlockDelegate>

@property SlideToUnlockViewController *slider;

@end

@implementation FirstViewController

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
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    if (!self.slider) {
        
        self.slider = [[SlideToUnlockViewController alloc] init];
        self.slider.delegate = self;
        self.slider.labelText = @"u shall not pass!";
        
        CGRect sliderFrame = self.slider.view.frame;
        sliderFrame.origin.y = self.view.frame.size.height - 96.0;
        self.slider.view.frame = sliderFrame;
        
        [self.view addSubview:self.slider.view];
        
    }
    
    self.slider.enabled = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)slided {
    
//    self.slider.enabled = NO;
    
    UIStoryboard *storyboard = self.storyboard;
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
