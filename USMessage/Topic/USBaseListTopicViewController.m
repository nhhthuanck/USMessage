//
//  USBaseListTopicViewController.m
//  USMessage
//
//  Created by Hoang Thuan on 11/22/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "USBaseListTopicViewController.h"
#import "TopicCollectionViewCell.h"

@interface USBaseListTopicViewController ()

@end

@implementation USBaseListTopicViewController
NSArray*arrListTopic;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    arrListTopic = [NSArray arrayWithObjects: @"System Notification", @"Idol Group", @"Meg Griffin", @"Jack Lolwut",
                    @"Mike Roflcoptor", @"Cindy Woods", @"Jessica Windmill", @"Alexander The Great",
                    @"Sarah Peterson", @"Scott Scottland", @"Geoff Fanta", @"Amanda Pope", @"Michael Meyers",
                    @"Richard Biggus", @"Montey Python", @"Mike Wut", @"Fake Person", @"Chair",
                    nil];
    [_cvListTopic registerNib:[UINib nibWithNibName:@"TopicCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"TopicCollectionCellID"];
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

- (IBAction)backAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return arrListTopic.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"TopicCollectionCellID";
    TopicCollectionViewCell*cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.lbNickName.text = [arrListTopic objectAtIndex:indexPath.row];
    cell.lbContent.text = @"Xin chào, rất vui được làm quen với bạn, hôm nay mình sẽ trình bày rất nhiều tiết mục ...";
    UIImage*imgProfile = [UIImage imageNamed:@"idol_profile"];
    cell.imgProfilePhoto.image = imgProfile;
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size = CGSizeMake(self.view.frame.size.width, 66.0f);
    return size;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
}
@end
