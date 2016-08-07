//
//  eraseImageViewController.m
//  eraseImage
//
//  Created by mr.scorpion on 2016/1/6.
//  Copyright 2016 mr.scorpion. All rights reserved.
//

#import "eraseImageViewController.h"

@implementation eraseImageViewController
@synthesize imageView;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	if([touch view]==imageView)
	{
		canEarse = YES;
	}
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	if(canEarse)
	{

		CGPoint currentPoint = [touch locationInView:imageView];
		UIGraphicsBeginImageContext(self.imageView.frame.size);
		[imageView.image drawInRect:imageView.bounds];
		CGContextClearRect (UIGraphicsGetCurrentContext(), CGRectMake(currentPoint.x, currentPoint.y, 30, 30)); 
		imageView.image = UIGraphicsGetImageFromCurrentImageContext(); 
		UIGraphicsEndImageContext();
	}
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	canEarse = NO;
	
}
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.imageView = nil;
}


- (void)dealloc {
	[imageView removeFromSuperview];
}

@end
