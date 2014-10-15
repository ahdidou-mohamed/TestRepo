//
//  ViewController.m
//  SampleProject
//
//  Created by MOHAMED AHDIDOU on 10/14/14.
//  Copyright (c) 2014 RESOTEL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slide:(id)sender {
    
    [UIView animateWithDuration:0.3 animations:^{
        
        self.animatedView.frame = CGRectMake(0, self.animatedView.frame.origin.y, self.animatedView.frame.size.width, self.animatedView.frame.size.height);
        
    } completion:^(BOOL finished) {
        
        NSLog(@"Animation complete");
        
    }];
    
}

- (IBAction)slideOut:(id)sender {
    
    [UIView animateWithDuration:0.3 animations:^{
        
        self.animatedView.frame = CGRectMake(-320, self.animatedView.frame.origin.y, self.animatedView.frame.size.width, 0);
        
    }];
    
}
@end
