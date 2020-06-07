//
//  AppDelegate.h
//  styleDotMe
//
//  Created by revanth kota on 06/06/20.
//  Copyright © 2020 Revanth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

