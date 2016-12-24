//
//  ViewController.m
//  Progress
//
//  Created by Tecksky Techonologies on 12/24/16.
//  Copyright © 2016 Tecksky Technologies. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "AppMethod.h"
@interface ViewController ()
{
    UIActivityIndicatorView *indicator;
}
@property (weak, nonatomic) IBOutlet UILabel *status;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator.frame = CGRectMake(50, 0, 500, 500);
    //indicator.center = self.view.center;
    [self.view addSubview:indicator];
    [indicator bringSubviewToFront:self.view];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = TRUE;
    [indicator startAnimating];
 
//     [indicator stopAnimating];
   }
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"Success");
    if ([[AppMethod getStringDefault:@"islogin"] isEqualToString:@"YES"]) {
        _status.text = @"Success";
    }
    else
    {
        _status.text = @"Failed";
    }
}
- (IBAction)okbtn:(id)sender
{
    [indicator stopAnimating];
    SecViewController *sec = [self.storyboard instantiateViewControllerWithIdentifier:@"SecViewController"];
    [self.navigationController pushViewController:sec animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
