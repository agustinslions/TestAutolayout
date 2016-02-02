//
//  ViewController.h
//  TestAutolayout
//
//  Created by Agustin De Leon on 2/2/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TestTypeConstraints) {
    TopConstraints,
    LeftConstraints,
    RightConstraints,
    BottomConstraints,
    WidthAndHeightConstriants,
    EqualWHConstraints,
    AspectRatioConstraints,
    LeadingEdgesConstraints,
    TrailingEdgesConstraints,
    TopEdgesConstraints,
    BottomEdgesConstraints,
    HVCentersConstrainsts,
    HVinContainerConstraints,
};

@interface ViewController : UIViewController


@end

