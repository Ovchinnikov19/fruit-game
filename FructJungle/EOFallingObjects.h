//
//  FallingObjects.h
//  FructJungle
//
//  Created by user on 13.02.18.
//  Copyright © 2018 Eduard Ovchinnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol EOFallingObjects <NSObject>

@required
@property (nonatomic, weak) UIImageView* img;
@property (nonatomic, assign) NSInteger scoreCoast;
@property (nonatomic, assign) CGFloat chanceGeneration;
@property (nonatomic, assign) NSInteger speed;

- (void) fallIntoGrass;
- (void) caughtBasket;
- (void) objectMovement;

@end
