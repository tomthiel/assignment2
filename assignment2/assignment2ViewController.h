//
//  assignment2ViewController.h
//  assignment2
//
//  Created by student on 1/23/13.
//  Copyright (c) 2013 TomThiel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface assignment2ViewController : UIViewController
//add outlets
@property (weak, nonatomic) IBOutlet UISlider *ageSlider;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UISwitch *readySwitch;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextField *firstNameBox;
//add actions
- (IBAction)ageSliderChanged:(id)sender;
- (IBAction)readySwitchChanged:(id)sender;
- (IBAction)submitButtonClicked:(id)sender;
- (IBAction)firstNameExit:(id)sender;
- (IBAction)lastNameExit:(id)sender;


@end
