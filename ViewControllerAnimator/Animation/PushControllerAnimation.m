//
//  PushControllerAnimation.m
//  ViewControllerAnimator
//
//  Created by Double on 15/11/4.
//  Copyright © 2015年 wdabo. All rights reserved.
//

#import "PushControllerAnimation.h"
#define ScreenSize [UIScreen mainScreen].bounds.size

@implementation PushControllerAnimation

//这个代理方法返回动画时间
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.4;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController* toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController* fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    [[transitionContext containerView] addSubview:toViewController.view];
    
    //自己定义动画效果
    toViewController.view.frame = CGRectMake(0, ScreenSize.height, ScreenSize.width, ScreenSize.height);
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toViewController.view.frame = CGRectMake(0, 0, ScreenSize.width, ScreenSize.height);
        fromViewController.view.frame = CGRectMake(0, -ScreenSize.height, ScreenSize.width, ScreenSize.height);
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
}

@end
