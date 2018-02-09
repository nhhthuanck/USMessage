//
//  USBaseMessageViewController.h
//  USMessage
//
//  Created by Hoang Thuan on 11/23/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USBaseMessageViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UIButton *btnBackButton;
@property (weak, nonatomic) IBOutlet UICollectionView *cvListMessage;
@property (weak, nonatomic) IBOutlet UIView *cvStatusBar;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewHeightConstraint;
- (IBAction)backAction:(id)sender;
@end
