//
//  USBaseMessageViewController.m
//  USMessage
//
//  Created by Hoang Thuan on 11/23/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "USBaseMessageViewController.h"
#import "MessageEventCollectionViewCell.h"
#import "MessageSystemCollectionViewCell.h"

@interface USBaseMessageViewController ()

@end

@implementation USBaseMessageViewController
NSArray*arrListMessage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    arrListMessage = [NSArray arrayWithObjects: @"System Notification", @"Idol Group", @"Meg Griffin", @"Jack Lolwut",
                    @"Mike Roflcoptor", @"Cindy Woods", @"Jessica Windmill", @"Alexander The Great",
                    @"Sarah Peterson", @"Scott Scottland", @"Geoff Fanta", @"Amanda Pope", @"Michael Meyers",
                    @"Richard Biggus", @"Montey Python", @"Mike Wut", @"Fake Person", @"Chair",
                    nil];
    
    [_cvListMessage registerNib:[UINib nibWithNibName:@"MessageEventCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"MessageEventID"];
    
    [_cvListMessage registerNib:[UINib nibWithNibName:@"MessageSystemCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"MessageSystemID"];
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
    return arrListMessage.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MessageEventCollectionViewCell*cell;
    if(indexPath.row % 2 != 0)
    {
        static NSString *CellIdentifier = @"MessageEventID";
        MessageEventCollectionViewCell*cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        return cell;
    } else {
        static NSString *CellIdentifier = @"MessageSystemID";
        MessageSystemCollectionViewCell*cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        return cell;
    }
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size;
    if(indexPath.row % 2 != 0)
    {
        size = CGSizeMake(self.view.frame.size.width, 381.0f);
    }else{
        size = CGSizeMake(self.view.frame.size.width, 157.0f);
    }
    return size;
}

@end
