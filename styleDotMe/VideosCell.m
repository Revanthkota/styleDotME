//
//  VideosCell.m
//  styleDotMe
//
//  Created by revanth kota on 06/06/20.
//  Copyright © 2020 Revanth. All rights reserved.
//

#import "VideosCell.h"
#import "VideoCollectionCell.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@implementation VideosCell
{
    NSArray * VideoUrls;

}
- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    VideoUrls =   [NSArray arrayWithObjects: @"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
     @"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      @"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
       @"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",nil];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"VideoCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"VideoCollectionCell"];
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    VideoCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"VideoCollectionCell" forIndexPath:indexPath];
  
    AVPlayerItem* playerItem = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:VideoUrls[indexPath.item]]];
    AVPlayer* playVideo = [[AVPlayer alloc] initWithPlayerItem:playerItem];
    _playerViewController = [[AVPlayerViewController alloc] init];
    _playerViewController.player = playVideo;
    _playerViewController.player.volume = 0;
    _playerViewController.view.frame = cell.videoView.bounds;
    [cell.videoView addSubview:_playerViewController.view];
    [playVideo play];
    
    
    
//NSURL *videoURL = [NSURL URLWithString:@"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4"];
//   AVPlayer *player = [AVPlayer playerWithURL:videoURL];
//   AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
//   playerLayer.frame = cell.contentView.bounds;
//   [cell.videoView.layer addSublayer:playerLayer];
//   [player play];
    
       return cell;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    VideoCollectionCell *cell = (VideoCollectionCell *)[self.collectionView cellForItemAtIndexPath:indexPath];

    AVPlayerItem* playerItem = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:VideoUrls[indexPath.item]]];
    AVPlayer* playVideo = [[AVPlayer alloc] initWithPlayerItem:playerItem];
    _playerViewController = [[AVPlayerViewController alloc] init];
    _playerViewController.player = playVideo;
    _playerViewController.player.volume = 0;
    _playerViewController.view.frame = cell.videoView.bounds;
    [cell.videoView addSubview:_playerViewController.view];
    [playVideo play];
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
   // UIImage *image = [self.results objectAtIndex:indexPath.row];
    return CGSizeMake(self.collectionView.frame.size.width - 16, self.collectionView.frame.size.height - 16);
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 10, 10, 10);
}
- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return VideoUrls.count;
}

@end
