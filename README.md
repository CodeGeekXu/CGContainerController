# CGContainerController

[![CI Status](https://img.shields.io/travis/CodeGeekXu/CGContainerController.svg?style=flat)](https://travis-ci.org/CodeGeekXu/CGContainerController)
[![Version](https://img.shields.io/cocoapods/v/CGContainerController.svg?style=flat)](https://cocoapods.org/pods/CGContainerController)
[![License](https://img.shields.io/cocoapods/l/CGContainerController.svg?style=flat)](https://cocoapods.org/pods/CGContainerController)
[![Platform](https://img.shields.io/cocoapods/p/CGContainerController.svg?style=flat)](https://cocoapods.org/pods/CGContainerController)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

```objective-c
- (instancetype)init
{
    CGViewController *page1 = [CGViewController new];
    page1.view.backgroundColor = [UIColor whiteColor];
    
    CGViewController *page2 = [CGViewController new];
    page2.view.backgroundColor = [UIColor redColor];
    
    CGViewController *page3 = [CGViewController new];
    page3.view.backgroundColor = [UIColor greenColor];
    
    CGViewController *page4 = [CGViewController new];
    page4.view.backgroundColor = [UIColor blueColor];
    
    CGViewController *page5 = [CGViewController new];
    page5.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    CGViewController *page6 = [CGViewController new];
    page6.view.backgroundColor = [UIColor lightGrayColor];
    
    CGViewController *page7 = [CGViewController new];
    page7.view.backgroundColor = [UIColor purpleColor];
    
    self = [super initWithTitles:@[@"Page 1",@"Page 2",@"Page 3",@"Page 4",@"Page 5",@"Page 6",@"Page 7"]
                childControllers:@[page1,page2,page3,page4,page5,page6,page7]
                segmentBarHeight:40];
    if (self) {
        self.segmentBar.indicatorColor = [UIColor blueColor];
        self.segmentBar.widthStyle = CGSegmentBarWidthStyleDynamic;
        self.segmentBar.interitemSpacing = 40;
        self.segmentBar.paddingInsets = UIEdgeInsetsMake(0, 20, 0, 20);
        self.segmentBar.selectedTextAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:16],
                                                   NSForegroundColorAttributeName:[UIColor blueColor]};
        [self.segmentBar reload];
    }
    return self;
}

- (void)setupBanner
{
    CGFloat width = self.view.bounds.size.width;
    UIImageView *bannerView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, width/2)];
    bannerView.image = [UIImage imageNamed:@"banner"];
    self.headerView = bannerView;
}
```

## Requirements

## Installation

CGContainerController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CGContainerController'
```

## Author

CodeGeekXu, codegeekxu@gmail.com

## License

CGContainerController is available under the MIT license. See the LICENSE file for more info.
