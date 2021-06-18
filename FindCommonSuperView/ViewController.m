//
//  ViewController.m
//  FindCommonSuperView
//
//  Created by lab team on 2021/6/18.
//

#import "ViewController.h"
#import "LCFindCommonSuperViewManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 300, 300)];
    firstView.backgroundColor = [UIColor redColor];
    [self.view addSubview:firstView];
    
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    secondView.backgroundColor = [UIColor greenColor];
    [firstView addSubview:secondView];
    
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    thirdView.backgroundColor = [UIColor blueColor];
    [secondView addSubview:thirdView];
    
    
    UIView *otherView = [[UIView alloc] initWithFrame:CGRectMake(100, 550, 100, 100)];
    otherView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:otherView];
    
    
    LCFindCommonSuperViewManager *manager = [[LCFindCommonSuperViewManager alloc] init];
    NSArray *array = [manager findCommonSuperView:thirdView otherView:otherView];
    NSLog(@"%@", array);
}


@end
