//
//  EOGameFieldViewController.m
//  FructJungle
//
//  Created by user on 13.02.18.
//  Copyright © 2018 Eduard Ovchinnikov. All rights reserved.
//

#import "EOGameFieldViewController.h"
#import "EOFallingObject.h"

@interface EOGameFieldViewController ()
{
    BOOL start;
    NSInteger scoreValue;
    NSInteger livesValue;
    NSInteger numberObjects;
    __weak IBOutlet UIImageView *apple1;
    __weak IBOutlet UIImageView *apple2;
    __weak IBOutlet UIImageView *apple3;
    __weak IBOutlet UIImageView *apple4;
    __weak IBOutlet UIImageView *apple5;
    __weak IBOutlet UIImageView *apple6;
    __weak IBOutlet UIImageView *apple7;
}

@end

@implementation EOGameFieldViewController





#pragma mark - Random
- (NSInteger) randomNumberFrom: (NSInteger) beginNumber toNumber: (NSInteger) endNumber{
    NSInteger howMuch = 1 + endNumber - beginNumber;
    NSInteger rand = arc4random()% howMuch + beginNumber;
    return rand;
}

- (void) livesDecreaseMethod{
    livesValue = livesValue - 1;
    livesLabel.text = [NSString stringWithFormat:@"LIVE LEFT: %ld", (long)livesValue];
    if (livesValue < 1) {
        [timerMovement invalidate];
        gameOverLabel.hidden = NO;
        
    }
    
}

- (void) scoreIncreaseMethod{
    scoreValue += 100;
    scoreLabel.text = [NSString stringWithFormat:@"%ld", (long)scoreValue];
    
}

- (void) fallingObjectsMovement{
    
    apple1.center = CGPointMake(apple1.center.x, apple1.center.y+3);
    apple2.center = CGPointMake(apple2.center.x, apple2.center.y+3);
    apple3.center = CGPointMake(apple3.center.x, apple3.center.y+3);
    apple4.center = CGPointMake(apple4.center.x, apple4.center.y+3);
    apple5.center = CGPointMake(apple5.center.x, apple5.center.y+3);
    apple6.center = CGPointMake(apple6.center.x, apple6.center.y+3);
    apple7.center = CGPointMake(apple7.center.x, apple7.center.y+3);
    
    if (CGRectIntersectsRect(apple1.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple1.center = CGPointMake([self randomNumberFrom:(40) toNumber:(627)], -[self randomNumberFrom:(100) toNumber:(500)]);
    }
    if (CGRectIntersectsRect(apple2.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple2.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple3.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple3.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple4.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple4.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple5.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple5.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple6.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple6.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple7.frame, bottomGrass.frame)){
        [self livesDecreaseMethod];
        apple7.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    //basket.frame
    if (CGRectIntersectsRect(apple1.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple1.center = CGPointMake([self randomNumberFrom:(40) toNumber:(627)], -[self randomNumberFrom:(100) toNumber:(500)]);
    }
    if (CGRectIntersectsRect(apple2.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple2.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple3.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple3.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple4.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple4.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple5.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple5.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple6.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple6.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
    if (CGRectIntersectsRect(apple7.frame, basket.frame)){
        [self scoreIncreaseMethod];
        apple7.center = CGPointMake([self randomNumberFrom:40 toNumber:627], -[self randomNumberFrom: 50 toNumber: 800]);
    }
}

#pragma mark - Touches
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if(start == NO){
        livesLabel.hidden = NO;
        scoreLabel.hidden = NO;
        goalGame.hidden = YES;
        start = YES;
        
        timerMovement = [NSTimer scheduledTimerWithTimeInterval:0.015 target:self selector:@selector(fallingObjectsMovement) userInfo:nil repeats:YES];
    }
    
    
        UITouch * touch = [touches anyObject];
        CGPoint point = [touch locationInView:self.view];
        basket.center = CGPointMake(point.x, basket.center.y);
}

- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    // so that the basket does not go out of the screen
    if(point.x < 40){
        basket.center = CGPointMake(40, basket.center.y);
    }
    else if(point.x > 627)
    {
        basket.center = CGPointMake(627, basket.center.y);
    }
    else {
    basket.center = CGPointMake(point.x, basket.center.y);
}

}
#pragma mark - Main
- (void)viewDidLoad {
    
    
    livesLabel.hidden = YES;
    scoreLabel.hidden = YES;
    gameOverLabel.hidden = YES;
    start = NO;
    
    scoreValue = 0;
    livesValue = 10;
   
    
    [super viewDidLoad];
    
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

@end
