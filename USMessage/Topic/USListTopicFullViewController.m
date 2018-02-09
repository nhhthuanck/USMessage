//
//  USListTopicFullViewController.m
//  USMessage
//
//  Created by Hoang Thuan on 11/22/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "USListTopicFullViewController.h"
#import "USMessageFullViewController.h"

@interface USListTopicFullViewController ()

@end

@implementation USListTopicFullViewController

- (instancetype)init {
    if(self = [super initWithNibName:@"USBaseListTopicViewController" bundle:nil])
    {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.headerView.backgroundColor = [UIColor blueColor];
    self.lbTitle.text = @"Fullview List Topic";
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

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 1) {
        USListTopicFullViewController*idolListMessageView = [[USListTopicFullViewController alloc] init];
        idolListMessageView.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        [self presentViewController:idolListMessageView animated:YES completion:nil];
    } else {
        USMessageFullViewController*messageView = [[USMessageFullViewController alloc] init];
        messageView.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        [self presentViewController:messageView animated:YES completion:nil];
    }
}

@end
