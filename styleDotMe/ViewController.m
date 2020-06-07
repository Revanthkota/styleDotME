//
//  ViewController.m
//  styleDotMe
//
//  Created by revanth kota on 06/06/20.
//  Copyright © 2020 Revanth. All rights reserved.
//

#import "ViewController.h"
#import "ReviesCell.h"
#import "VideosCell.h"
@interface ViewController ()

{
    NSArray * reviewsTextArray;
    NSArray * ReviewsImgArray;
}

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Near by details";
  



    reviewsTextArray = [NSArray arrayWithObjects:@"One of my favourate place is shangie and it's good to visit 2-3 times.",@"Dada is my best place",@"hello guys,i have visited dubai such a noce place to visit you will see many places there.",@"good place.",@"super.",@"One of my favourate place is shangie and it's good to visit 2-3 times.",@"Dada is my best place",@"hello guys,i have visited dubai such a noce place to visit you will see many places there.",@"good place.",@"super.", nil];
      ;
  ReviewsImgArray = [NSArray arrayWithObjects: @"img1", @"img2", @"img3", @"img1", @"img2",@"img1", @"img2", @"img3", @"img1", @"img2", nil];
    // Do any additional setup after loading the view.
    
    self.callBtn.layer.cornerRadius = 8;
    self.messagebtn.layer.cornerRadius = 8;
    self.messageTypeBtn.layer.cornerRadius = 8;

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ReviesCell" bundle:nil] forCellReuseIdentifier:@"ReviesCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"VideosCell" bundle:nil] forCellReuseIdentifier:@"VideosCell"];

}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"Videos";
    }
    else{
        return @"Reviews";
    }
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        
    
    VideosCell * cell = [tableView dequeueReusableCellWithIdentifier:@"VideosCell" forIndexPath:indexPath];
         if (cell == nil)
            {
                 
                cell = [[VideosCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"VideosCell"];
            }
        
    return cell;
    }
    else{
ReviesCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ReviesCell" forIndexPath:indexPath];
        if (cell == nil)
                  {
                      cell = [[ReviesCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ReviesCell"];
                  }
        cell.reviewText.text = reviewsTextArray[indexPath.row];
        cell.revieweerImg.image = [UIImage imageNamed:ReviewsImgArray[indexPath.row]];
        
           return cell;
    }
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 300;
    }
    else{
        return UITableViewAutomaticDimension;

    }
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    else
    return reviewsTextArray.count;
}









@end
