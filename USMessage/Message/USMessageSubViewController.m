//
//  USMessageSubViewController.m
//  USMessage
//
//  Created by Hoang Thuan on 11/23/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "USMessageSubViewController.h"

@interface USMessageSubViewController ()

@end

@implementation USMessageSubViewController

- (instancetype)init {
    if(self = [super initWithNibName:@"USBaseMessageViewController" bundle:nil])
    {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.headerView.backgroundColor = [UIColor redColor];
    self.lbTitle.text = @"Subview List Message";
    self.btnBackButton.hidden = YES;
    self.viewHeightConstraint.constant = self.view.frame.size.height/2;
    UITapGestureRecognizer*tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.cvStatusBar addGestureRecognizer:tap];
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

-(void)tapAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
