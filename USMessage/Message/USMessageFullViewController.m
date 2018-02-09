//
//  USMessageFullViewController.m
//  USMessage
//
//  Created by Hoang Thuan on 11/23/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "USMessageFullViewController.h"

@interface USMessageFullViewController ()

@end

@implementation USMessageFullViewController

- (instancetype)init {
    if(self = [super initWithNibName:@"USBaseMessageViewController" bundle:nil])
    {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.headerView.backgroundColor = [UIColor blueColor];
    self.lbTitle.text = @"Fullview List Message";
    self.cvStatusBar.backgroundColor  =  [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
