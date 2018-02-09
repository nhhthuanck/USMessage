//
//  USListTopicSubViewController.m
//  USMessage
//
//  Created by Hoang Thuan on 11/22/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "USListTopicSubViewController.h"
#import "USMessageSubViewController.h"

@interface USListTopicSubViewController ()

@end

@implementation USListTopicSubViewController

- (instancetype)init {
    if(self = [super initWithNibName:@"USBaseListTopicViewController" bundle:nil])
    {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.headerView.backgroundColor = [UIColor redColor];
    self.lbTitle.text = @"Subview List Topic";
    self.btnBackButton.hidden = YES;
    self.viewHeightConstraint.constant = self.view.frame.size.height/2;
    UITapGestureRecognizer*tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.cvStatusBar addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 1) {
        USListTopicSubViewController*idolListMessageView = [[USListTopicSubViewController alloc] init];
        idolListMessageView.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        [self presentViewController:idolListMessageView animated:YES completion:nil];
    } else {
        USMessageSubViewController*messageView = [[USMessageSubViewController alloc] init];
        messageView.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        [self presentViewController:messageView animated:YES completion:nil];
    }
}

@end
