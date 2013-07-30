//
//  ViewController.h
//  BounceButtonAnimation
//
//  Created by Gaurav on 30/07/13.
//  Copyright (c) 2013 GRaj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSTimer *bounceTimer;
@property (nonatomic, assign) int growCount, growDir;
@property (nonatomic, assign) CGFloat buttonScale;
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;

- (IBAction)bounceAnimation:(id)sender;

@end
