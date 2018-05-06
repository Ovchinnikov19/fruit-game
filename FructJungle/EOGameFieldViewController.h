//
//  EOGameFieldViewController.h
//  FructJungle
//
//  Created by user on 13.02.18.
//  Copyright © 2018 Eduard Ovchinnikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EOGameFieldViewController : UIViewController
{
    
    __weak IBOutlet UIImageView *bottomGrass;
    
    __weak IBOutlet UIImageView *basket;
    
    __weak IBOutlet UILabel *goalGame;
    
    __weak IBOutlet UILabel *gameOverLabel;
    
    __weak IBOutlet UILabel *livesLabel;
    
    __weak IBOutlet UILabel *scoreLabel;
    
    NSTimer* timerMovement;
}

//- (void) generationFallingObject;

//- (void) generationPlaceforFallingObject;
//
//- (void) fallingObjectsMovement:(NSMutableArray*) array;
//
//- (void) movementBasket;
//
//- (void) scoreIncrease;
//
//- (void) scoredecrease;
//
//- (void) livesincrease;
//
//- (void) livesDecrease;

@end
