//
//  VideosCell.h
//  styleDotMe
//
//  Created by revanth kota on 06/06/20.
//  Copyright © 2020 Revanth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideosCell : UITableViewCell<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) AVPlayerViewController *playerViewController;

@end

NS_ASSUME_NONNULL_END
