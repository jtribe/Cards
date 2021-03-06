//
//  AViewController.m
//  Cards
//
//  Created by Armin Kroll on 8/07/13.
//  Copyright (c) 2013 jTribe. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (id) initWithTitle:(NSString*)title
{
  self = [super init];
  if (self) {
    self.title = title;
  }
  return self;
}

- (void) loadView
{
  // create a card view and make it the main view of the controller
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 400)];
  view.backgroundColor = [UIColor blueColor];
  //  label
  {
    UILabel *label = [[UILabel alloc] initWithFrame:view.bounds];
    label.text = self.title;
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    [view addSubview:label];
    [label sizeToFit];
    label.center = CGPointMake(label.superview.center.x, label.center.y);
  }
  self.view = view;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


@end
