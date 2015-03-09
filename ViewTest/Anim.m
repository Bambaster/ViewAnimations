//
//  Anim.m
//  ALCOMATH
//
//  Created by Lowtrack on 06.03.15.
//  Copyright (c) 2015 Vladimir Popov. All rights reserved.
//

#import "Anim.h"

@implementation Anim




- (void) change_CheckBox: (UIView *) view Color: (UIColor *) color{
    
    CATransition * animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [animation setDuration:0.35];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFillMode:kCAFillModeBoth];
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;

}


- (void) change_Placeholder: (UILabel *) label Alpha: (int) alpha{
    
    CATransition * animation = [CATransition animation];
    [animation setType:kCATransitionPush];
    
    if (alpha == 0) {
        [animation setSubtype:kCATransitionFromLeft];

    }
    else {
        
        [animation setSubtype:kCATransitionFromRight];

    }

    [animation setDuration:0.35];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFillMode:kCAFillModeBoth];
    
    [label.layer addAnimation:animation forKey:@"Fade"];
    
    label.alpha = alpha;
    
    
}



- (void) move_PlaceHoldr_UP : (UILabel *) label Points: (int) points TextColor: (UIColor *) text_Color {
    
    CGRect newFrame = [label frame];
    newFrame.origin.y = label.frame.origin.y + points;
    
    [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionTransitionNone animations:^{
        label.frame = newFrame;
        
        int64_t delayInSeconds = 10;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_MSEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            CATransition * animation = [CATransition animation];
            [animation setType:kCATransitionFade];
            [animation setDuration:0.2];
            [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
            [animation setFillMode:kCAFillModeBoth];
            
            [label.layer addAnimation:animation forKey:@"Fade"];
            
            label.textColor = text_Color;
            
            
            
        });
        
    } completion:^(BOOL finished) {
        

    }];
    
}





// Glow effect


- (void) change_Glow: (UILabel *) label Alpha:(int) alpha {
    
    CATransition * animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [animation setDuration:0.35];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFillMode:kCAFillModeBoth];
    [label.layer addAnimation:animation forKey:@"Fade"];
    
    label.layer.shadowColor = [UIColor colorWithWhite:1.0 alpha:alpha].CGColor;
    label.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    label.layer.shadowRadius = 7.5f;
    label.layer.shadowOpacity = 12.4f;
    label.layer.masksToBounds = NO;
}



@end
