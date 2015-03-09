//
//  ViewController.h
//  ViewTest
//
//  Created by Lowtrack on 09.03.15.
//  Copyright (c) 2015 Vladimir Popov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ViewController : UIViewController <UITextFieldDelegate>  {
    
    BOOL isYesChoosen;
    
    BOOL isPlaceHolderHiden;
    
    
    
}
@property (strong, nonatomic) IBOutlet UIView *view_BG_YES;
@property (strong, nonatomic) IBOutlet UIView *view_BG_NO;
@property (strong, nonatomic) IBOutlet UIView *view_Check_Yes;
@property (strong, nonatomic) IBOutlet UIView *view_Check_No;


@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *label_PlaceHolder;

- (IBAction)yes_Action:(id)sender;

- (IBAction)no_Action:(id)sender;

- (IBAction)textFild_Action:(id)sender;

// glow effect

@property (strong, nonatomic) IBOutlet UILabel *label_Glow;


@end

