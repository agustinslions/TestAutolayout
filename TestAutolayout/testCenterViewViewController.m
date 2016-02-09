//
//  testCenterViewViewController.m
//  TestAutolayout
//
//  Created by Agustin De Leon on 9/2/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "testCenterViewViewController.h"

#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)

@interface testCenterViewViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightAutolayoutconstaint;

@end

@implementation testCenterViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (IS_IPHONE5) {
        self.heightAutolayoutconstaint.constant = 20;
    }
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
