//
//  SecViewController.m
//  Progress
//
//  Created by Tecksky Techonologies on 12/24/16.
//  Copyright © 2016 Tecksky Technologies. All rights reserved.
//

#import "SecViewController.h"
#import "AppMethod.h"

@interface SecViewController ()
{
    NSString *uname,*pass;
}
@property (weak, nonatomic) IBOutlet UITextField *uname;
@property (weak, nonatomic) IBOutlet UITextField *pass;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    uname = @"urvashi";
    pass = @"123456";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender
{
   
    if ([uname isEqualToString: _uname.text] &&  [pass isEqualToString:_pass.text])
    {
        NSLog(@"Login Successfull");
        [AppMethod setStringDefault:@"islogin" :@"YES"];
    }
    else
    {
        NSLog(@"Error");
        [AppMethod setStringDefault:@"islogin" :@"NO"];
    }
}


@end
