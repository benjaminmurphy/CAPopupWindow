//
//  CAViewController.m
//  CAPopupWindowExample
//
//  Created by Benjamin Murphy on 6/13/13.
//  Copyright (c) 2013 Benjamin Murphy. All rights reserved.
//

#import "CAViewController.h"
#import "CAPopupWindow.h"

@interface CAViewController ()

@end

@implementation CAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.button addTarget:self action:@selector(buttonPress) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)buttonPress {
    
    CAPopupWindow* popView = [[CAPopupWindow alloc] initWithObjectList:@[[CAWindowObject windowObject:@"Save" image:nil target:self action:@selector(say)],
                                                                         [CAWindowObject windowObject:@"Share" image:nil target:nil action:nil],
                                                                         [CAWindowObject windowObject:@"Delete" image:nil target:nil action:nil],
                                                                         [CAWindowObject windowObject:@"Undo" image:nil target:nil action:nil],
                                                                         [CAWindowObject windowObject:@"Redo" image:nil target:nil action:nil],
                                                                         [CAWindowObject windowObject:@"New" image:nil target:nil action:nil]]];
    [popView presentInView:self.view];
    
}

-(void) say {
    NSLog(@"Hi!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
