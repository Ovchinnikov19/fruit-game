//
//  EOFallingObjectDefault.m
//  FructJungle
//
//  Created by user on 13.02.18.
//  Copyright © 2018 Eduard Ovchinnikov. All rights reserved.
//

#import "EOFallingObject.h"

@implementation EOFallingObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        _speed = 2;
        _chanceGeneration = 1.0f;
        _scoreCoast = 100;
    }
    return self;
}


- (void) fallIntoGrass{
    
}

- (void) caughtBasket{
    
}

- (void) objectMovement{
    _img.center = CGPointMake(_img.center.x, _img.center.y + _speed);
}

@end
