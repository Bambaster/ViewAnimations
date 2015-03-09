//
//  ViewController.m
//  ViewTest
//
//  Created by Lowtrack on 09.03.15.
//  Copyright (c) 2015 Vladimir Popov. All rights reserved.
//

#import "ViewController.h"
#import "Anim.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.textField) {
        [self.textField resignFirstResponder];
        
        return NO;
    }
    

    return YES;
}



- (void) viewWillAppear:(BOOL)animated {
    
    
    
    [self setup];
}


- (void) setup {
    
    isYesChoosen = YES;
    isPlaceHolderHiden = NO;
    
    self.view_Check_Yes.layer.borderColor = [UIColor blueColor].CGColor;
    self.view_Check_Yes.layer.borderWidth = 1.0;
    self.view_Check_Yes.layer.cornerRadius = 5.0;
    self.view_Check_Yes.backgroundColor = [UIColor blueColor];
    
    
    self.view_Check_No.layer.borderColor = [UIColor blueColor].CGColor;
    self.view_Check_No.layer.borderWidth = 1.0;
    self.view_Check_No.layer.cornerRadius = 5.0;
    self.view_Check_No.backgroundColor = [UIColor clearColor];
    
    
    self.view_BG_NO.layer.borderColor = [UIColor blueColor].CGColor;
    self.view_BG_NO.layer.borderWidth = 1.0;
    self.view_BG_NO.layer.cornerRadius = 5.0;
    
    self.view_BG_YES.layer.borderColor = [UIColor blueColor].CGColor;
    self.view_BG_YES.layer.borderWidth = 1.0;
    self.view_BG_YES.layer.cornerRadius = 5.0;
    
    self.textField.layer.borderColor = [UIColor blueColor].CGColor;
    self.textField.layer.borderWidth = 1.0;
    self.textField.layer.cornerRadius = 5.0;
    
    
    self.label_Glow.layer.shadowColor = [UIColor whiteColor].CGColor;
    self.label_Glow.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.label_Glow.layer.shadowRadius = 7.5f;
    self.label_Glow.layer.shadowOpacity = 12.4f;
    self.label_Glow.layer.masksToBounds = NO;
    
    
}


- (IBAction)yes_Action:(id)sender {
    
    if (!isYesChoosen) {
        Anim * anim = [Anim new];
        
        [anim change_CheckBox:self.view_Check_Yes Color:[UIColor blueColor]];
        [anim change_CheckBox:self.view_Check_No Color:[UIColor clearColor]];
        
        //анимируем включение Glow
        [anim change_Glow:self.label_Glow Alpha:1];
        
        isYesChoosen = YES;
        
        
        
    }
    
}

- (IBAction)no_Action:(id)sender {
    if (isYesChoosen) {
        
        isYesChoosen = NO;
        
        Anim * anim = [[Anim alloc] init];
        
        
        [anim change_CheckBox:self.view_Check_Yes Color:[UIColor clearColor]];
        [anim change_CheckBox:self.view_Check_No Color:[UIColor blueColor]];
        
        //анимируем выключение Glow
        [anim change_Glow:self.label_Glow Alpha:0];
        
        
    }
    
    
}

- (IBAction)textFild_Action:(id)sender {
    
    
    if (self.textField.text.length == 0) {
        
        if (isPlaceHolderHiden) {
            
            isPlaceHolderHiden = NO;
            Anim * anim = [[Anim alloc] init];
            [anim move_PlaceHoldr_UP:self.label_PlaceHolder Points:25 TextColor:[UIColor lightGrayColor]];
        }
        
        
    }
    
    
    else {
        
        if (!isPlaceHolderHiden) {
            
            isPlaceHolderHiden = YES;
            
            Anim * anim = [[Anim alloc] init];
            [anim move_PlaceHoldr_UP:self.label_PlaceHolder Points:-25 TextColor:[UIColor whiteColor]];
        }
    }
    
}



@end
