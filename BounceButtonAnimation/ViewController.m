//
//  ViewController.m
//  BounceButtonAnimation
//
//  Created by Gaurav on 30/07/13.
//  Copyright (c) 2013 GRaj. All rights reserved.
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

#pragma mark - Bounce Button Animations


CGFloat buttonScale = 1.0;
int growDir = 0;
int growCount = 0;

-(void)bounceAnimateButton:(id)sender
{
    if (_bounceTimer) {
        return;
    }
    UIButton* button = (UIButton*)sender;
    NSDictionary *userInfo = @{@"buttonId": button};
    growDir = 1;
	buttonScale = 1.000000;
	_bounceTimer = [NSTimer
                    scheduledTimerWithTimeInterval:0.02
                    target:self
                    selector:@selector(bounceButtonWithAnimation:)
                    userInfo:userInfo
                    repeats:YES];
}

-(void) bounceButtonWithAnimation:(NSTimer *)timer {
	
    NSDictionary *userInfo = [timer userInfo];
    UIButton *selBtn = (UIButton *)[userInfo valueForKey:@"buttonId"];
	
	if (buttonScale >= 1.400000) {
		growDir = 0;
	}
	if (buttonScale <= 0.800000) {
		growDir = 1;
	}
	switch (growDir) {
        case 0:
			buttonScale = buttonScale - 0.1f;
			break;
        case 1:
			buttonScale = buttonScale + 0.1f;
			if (buttonScale == 1.00000) {
				[_bounceTimer invalidate];
                _bounceTimer = nil;
			}
			break;
	}
	
	CGAffineTransform transform = CGAffineTransformMakeScale(buttonScale, buttonScale);
	selBtn.transform = transform;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bounceAnimation:(id)sender {
    
    [self bounceAnimateButton:sender];
}
@end
