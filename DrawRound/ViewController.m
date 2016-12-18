//
//  ViewController.m
//  DrawRound
//
//  Created by gavin on 2016/12/18.
//  Copyright © 2016年 gavin. All rights reserved.
//

#import "ViewController.h"
#import "CustomDrawRound.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CustomDrawRound *round = [[CustomDrawRound alloc] initWithFrame:CGRectMake(0, 20, 100, 100)];
    round.backgroundColor = [UIColor clearColor];
    [self.view addSubview:round];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
