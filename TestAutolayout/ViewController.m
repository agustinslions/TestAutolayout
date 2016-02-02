//
//  ViewController.m
//  TestAutolayout
//
//  Created by Agustin De Leon on 2/2/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 13;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"testTableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }

    cell.textLabel.text = [self stringForRow:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self performSegueWithIdentifier:[NSString stringWithFormat:@"testConstraint%i", (int)indexPath.row + 1] sender:nil];

}

- (NSString *)stringForRow:(NSInteger)row
{
    NSString *title;
    
    switch (row) {
        case 0: title = @"Top - Pin option";
            break;
        case 1: title = @"Left - Pin option";
            break;
        case 2: title = @"Right - Pin option";
            break;
        case 3: title = @"Bottom - Pin option";
            break;
        case 4: title = @"Width and Height - Pin option";
            break;
        case 5: title = @"Equal Widths and Equal Heights - Pin option";
            break;
        case 6: title = @"Aspect Ratio  - Pin option";
            break;
        case 7: title = @"Leading edges  - Align option";
            break;
        case 8: title = @"Trailing edges  - Align option";
            break;
        case 9: title = @"Top Edges - Align option";
            break;
        case 10: title = @"Bottom edges - Align option";
            break;
        case 11: title = @"Horizontal Centers, Vertical Centers- Align option";
            break;
        case 12: title = @"Horizontally in Container and Vertically in Container - Align option";
            break;
        default:
            break;
    }
    
    return title;
}

@end
