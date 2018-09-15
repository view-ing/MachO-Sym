//
//  DVTViewController.m
//  MachO-Sym
//
//  Created by liuzuopeng on 09/15/2018.
//  Copyright (c) 2018 liuzuopeng. All rights reserved.
//

#import "DVTViewController.h"
#import "LookupSymTest.h"



@interface DVTViewController ()

@end

@implementation DVTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    [LookupSymTest test];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
