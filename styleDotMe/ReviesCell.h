//
//  ReviesCell.h
//  styleDotMe
//
//  Created by revanth kota on 06/06/20.
//  Copyright © 2020 Revanth. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReviesCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *reviewText;
@property (weak, nonatomic) IBOutlet UIImageView *revieweerImg;

@end

NS_ASSUME_NONNULL_END
