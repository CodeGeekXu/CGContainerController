//
//  ContainerController.m
//  CGContainerController_Example
//
//  Created by 徐晨光 on 2018/9/2.
//  Copyright © 2018年 CodeGeekXu. All rights reserved.
//

#import "ContainerController.h"
#import "CGViewController.h"

@interface ContainerController ()

@end

@implementation ContainerController

- (instancetype)init
{
    CGViewController *page1 = [CGViewController new];
    page1.view.backgroundColor = [UIColor redColor];
    
    CGViewController *page2 = [CGViewController new];
    page2.view.backgroundColor = [UIColor whiteColor];
    
    CGViewController *page3 = [CGViewController new];
    page3.view.backgroundColor = [UIColor greenColor];
    
    self = [super initWithTitles:@[@"Page1",@"Page2",@"Page3"] childControllers:@[page1,page2,page3] segmentBarHeight:40];
    if (self) {
        self.segmentBar.indicatorColor = [UIColor blackColor];
//        self.segmentBar.widthStyle = CGSegmentBarWidthStyleDynamic
        self.segmentBar.selectedTextAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:16],NSForegroundColorAttributeName:[UIColor greenColor]};
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    headView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.headerView = headView;
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
