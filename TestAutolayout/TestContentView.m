//
//  TestContentView.m
//  TestAutolayout
//
//  Created by Agustin De Leon on 9/2/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "TestContentView.h"

@interface TestContentView ()

@property (nonatomic, strong) UIView *testFirstView;
@property (nonatomic, strong) UIView *testSecondView;
@property (nonatomic, strong) UIView *testLastView;

@end

@implementation TestContentView

- (instancetype)init
{
    self = [super init];
    
    if (!self) return nil;
    
    [self commonInit];
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (!self) return nil;
    
    [self commonInit];
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (!self) return nil;
    
    [self commonInit];
    
    return self;
}

- (void)commonInit
{
    float height = (self.frame.size.height - 20) / 3;
    
    self.testFirstView = [[UIView alloc] initWithFrame:CGRectMake(5, 5, (self.frame.size.width / 2)  - 5, height)];
    [self addSubview:self.testFirstView];
    self.testFirstView.backgroundColor = [UIColor whiteColor];
    
    self.testSecondView = [[UIView alloc] initWithFrame:CGRectMake(5, self.testFirstView.frame.origin.y + self.testFirstView.frame.size.height + 5,
                                                                   self.frame.size.width - 5, height)];
    [self addSubview:self.testSecondView];
    self.testSecondView.backgroundColor = [UIColor whiteColor];

    self.testLastView = [[UIView alloc] initWithFrame:CGRectMake(5, self.testSecondView.frame.origin.y + self.testSecondView.frame.size.height + 5,
                                                                 (self.frame.size.width / 3) - 5, height)];
    [self addSubview:self.testLastView];
    self.testLastView.backgroundColor = [UIColor whiteColor];

}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    float height = (self.frame.size.height - 20) / 3;

    if (self.testFirstView) {
        self.testFirstView.frame = CGRectMake(5, 5, (self.frame.size.width / 2) - 5, height);
    }
    
    if (self.testSecondView) {
        self.testSecondView.frame = CGRectMake(5, self.testFirstView.frame.origin.y + self.testFirstView.frame.size.height + 5,
                                               self.frame.size.width - 10, height);
    }
    
    if (self.testLastView) {
        self.testLastView.frame = CGRectMake(5, self.testSecondView.frame.origin.y + self.testSecondView.frame.size.height + 5,
                                             (self.frame.size.width / 3) - 5, height);
    }
}

@end
