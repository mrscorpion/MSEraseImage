//
//  ViewController.m
//  MSEraseImage
//
//  Created by mr.scorpion on 16/8/7.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "ViewController.h"
#import "eraseImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    eraseImageViewController *eraseVC = [[eraseImageViewController alloc] initWithNibName:@"eraseImageViewController" bundle:nil];
    [self presentViewController:eraseVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
