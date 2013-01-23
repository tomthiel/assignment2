//
//  assignment2ViewController.m
//  assignment2
//
//  Created by student on 1/23/13.
//  Copyright (c) 2013 TomThiel. All rights reserved.
//

#import "assignment2ViewController.h"

@interface assignment2ViewController ()

@end

@implementation assignment2ViewController

//need to synthesize outlets here too....
@synthesize ageSlider,ageLabel, readySwitch,submitButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	    // Do any additional setup after loading the view, 
    [submitButton setEnabled:NO ]; //set submit to disabled....
    [readySwitch setOn:NO animated:YES]; //set switch to off...
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ageSliderChanged:(id)sender {
    
    float sliderValue = [ageSlider value];
    int realSliderValue = (int) roundf(sliderValue);
    
    
    NSLog(@"Quantity Slider Value = %f || int value = %i", sliderValue, realSliderValue);
    
    //create instance of NSString, initialize with format for integer
    NSString *labelString = [[NSString alloc] initWithFormat:@"%i", realSliderValue  ];
    //same result, simpler:
  //  NSString *labelString_alt = [NSString stringWithFormat:@"i", realSliderValue];
    
    [ageLabel setText:labelString];

}

- (IBAction)readySwitchChanged:(id)sender {
    // this should enable submit button
    if ([readySwitch isOn]) {
        [submitButton setEnabled:YES ];
    }
    else {
        [submitButton setEnabled:NO];
    }
}

- (IBAction)submitButtonClicked:(id)sender {
         //display message when submit clicked
        NSLog(@"SUCCESS Thanks for your submission!");
    //create alert!
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Success!"
                            
        // send alert with name input
         message:[NSString stringWithFormat:@"Thanks for your submission %@",_firstNameBox.text]
                            
       // message:@"Thanks for your submission."
            delegate:nil
            cancelButtonTitle:@"OK"
            otherButtonTitles:nil];
    [message show];
   
}

- (IBAction)firstNameExit:(id)sender {
}



- (IBAction)lastNameExit:(id)sender {
}
@end
