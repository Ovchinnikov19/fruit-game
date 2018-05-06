//
//  AppDelegate.h
//  FructJungle
//
//  Created by user on 11.02.18.
//  Copyright © 2018 Eduard Ovchinnikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

