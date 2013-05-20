//
//  SlideToUnlockViewController.h
//  SlideToUnlock
//
//  Created by Ilter Cengiz on 5/20/13.
//  Copyright (c) 2013 Ilter Cengiz. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@class SlideToUnlockViewController;

@protocol SlideToUnlockDelegate <NSObject>

@required
- (void)slided;

@end

@interface SlideToUnlockViewController : UIViewController {
    
    UIImageView *sliderBackground;
    UISlider *slider;
    UILabel *label;
    NSTimer *animationTimer;
    __unsafe_unretained id <SlideToUnlockDelegate> _delegate;
    BOOL touchIsDown;
    CGFloat gradientLocations[3];
    int animationTimerCount;
    
}

@property (nonatomic, assign) id <SlideToUnlockDelegate> delegate;

// This property is set to NO (disabled) on creation.
// The caller must set it to YES to animate the slider.
// It should be set to NO (disabled) when the view is not visible, in order
// to turn off the timer and conserve CPU resources.
@property (nonatomic) BOOL enabled;

// This property should be assigned just after creating the slider
// If not set, label will be 'slide to unlock'
@property (nonatomic, strong) NSString *labelText;

@end
