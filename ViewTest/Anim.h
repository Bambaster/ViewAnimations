//
//  Anim.h
//  ALCOMATH
//
//  Created by Lowtrack on 06.03.15.
//  Copyright (c) 2015 Vladimir Popov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreFoundation/CoreFoundation.h>

@interface Anim : NSObject

- (void) change_CheckBox: (UIView *) view Color: (UIColor *) color;
- (void) change_Placeholder: (UILabel *) label Alpha: (int) alpha;
- (void) move_PlaceHoldr_UP : (UILabel *) label Points: (int) points TextColor: (UIColor *) text_Color;


- (void) change_Glow: (UILabel *) label Alpha:(int) alpha;

@end
