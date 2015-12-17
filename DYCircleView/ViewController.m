//
//  ViewController.m
//  DYCircleView
//
//  Created by xiaoyu on 15/12/4.
//  Copyright © 2015年 guoda. All rights reserved.
//
//
//                                  _oo8oo_
//                                 o8888888o
//                                 88" . "88
//                                 (| -_- |)
//                                 0\  =  /0
//                               ___/'==='\___
//                             .' \\|     |// '.
//                            / \\|||  :  |||// \
//                           / _||||| -:- |||||_ \
//                          |   | \\\  -  /// |   |
//                          | \_|  ''\---/''  |_/ |
//                          \  .-\__  '-'  __/-.  /
//                        ___'. .'  /--.--\  '. .'___
//                     ."" '<  '.___\_<|>_/___.'  >' "".
//                    | | :  `- \`.:`\ _ /`:.`/ -`  : | |
//                    \  \ `-.   \_ __\ /__ _/   .-` /  /
//                =====`-.____`.___ \_____/ ___.`____.-`=====
//                                  `=---=`
//
//
//       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//              佛祖保佑                                代码无Bug
//

#import "ViewController.h"
#import "DYCircleView.h"
@interface ViewController ()<GDDelegate> //接收点击的tag
- (void)initDragImageView;
- (void)showImage;
@end

@implementation ViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initDragImageView];
    [self showImage];
}
- (void)initDragImageView{
    
    imageviewBi = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
    UIImageView *i1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i1.image = [UIImage imageNamed:@"circe_1"];
    [imageviewBi addSubview:i1];
//    imageviewBi.image = [UIImage imageNamed:@"circe_1"];
    imageviewBi.backgroundColor = [UIColor yellowColor];
    
    imageviewCustomerInfo = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
    UIImageView *i2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i2.image = [UIImage imageNamed:@"circe_2"];
    [imageviewCustomerInfo addSubview:i2];

//    imageviewCustomerInfo.image = [UIImage imageNamed:@"circe_2"];
    imageviewCustomerInfo.backgroundColor = [UIColor yellowColor];
    
    
    imageviewDesire = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
//    imageviewDesire.image = [UIImage imageNamed:@"circe_3"];
    UIImageView *i3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i3.image = [UIImage imageNamed:@"circe_3"];
    [imageviewDesire addSubview:i3];

    imageviewDesire.backgroundColor = [UIColor yellowColor];
    imageviewMyInfo = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
//    imageviewMyInfo.image = [UIImage imageNamed:@"circe_4"];
    UIImageView *i4 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i4.image = [UIImage imageNamed:@"circe_4"];
    [imageviewMyInfo addSubview:i4];

    imageviewMyInfo.backgroundColor = [UIColor yellowColor];
    
    imageviewOrder = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
//    imageviewOrder.image = [UIImage imageNamed:@"circe_5"];
    UIImageView *i5 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i5.image = [UIImage imageNamed:@"circe_5"];
    [imageviewOrder addSubview:i5];
    imageviewOrder.backgroundColor = [UIColor yellowColor];
    
    
    
    
    image1 = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
    //    imageviewOrder.image = [UIImage imageNamed:@"circe_5"];
    UIImageView *i6 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i6.image = [UIImage imageNamed:@"circe_5"];
    [image1 addSubview:i6];
    image1.backgroundColor = [UIColor yellowColor];

    
    image2 = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
    //    imageviewOrder.image = [UIImage imageNamed:@"circe_5"];
    UIImageView *i7 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i7.image = [UIImage imageNamed:@"circe_5"];
    [image2 addSubview:i7];
    image2.backgroundColor = [UIColor yellowColor];

    image3 = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
    //    imageviewOrder.image = [UIImage imageNamed:@"circe_5"];
    UIImageView *i8 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i8.image = [UIImage imageNamed:@"circe_5"];
    [image3 addSubview:i8];
    image3.backgroundColor = [UIColor yellowColor];

    image4 = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 30)];
    //    imageviewOrder.image = [UIImage imageNamed:@"circe_5"];
    UIImageView *i9 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i9.image = [UIImage imageNamed:@"circe_5"];
    [image4 addSubview:i9];
    image4.backgroundColor = [UIColor yellowColor];

    

    
    arrImage = [[NSMutableArray alloc] initWithObjects:imageviewBi, imageviewCustomerInfo, imageviewDesire, imageviewMyInfo, imageviewOrder,image1,image2,image3,image4, nil];
#if 0
    imageviewBi = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
    imageviewBi.image = [UIImage imageNamed:@"biIcon.png"];
    
    imageviewCustomerInfo = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
    imageviewCustomerInfo.image = [UIImage imageNamed:@"customerInfoIcon.png"];
    
    
    imageviewDesire = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
    imageviewDesire.image = [UIImage imageNamed:@"desireIcon.png"];
    imageviewMyInfo = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
    imageviewMyInfo.image = [UIImage imageNamed:@"myInfoIcon.png"];
    imageviewOrder = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
    imageviewOrder.image = [UIImage imageNamed:@"orderIcon.png"];
//    imageviewPrice = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
//    imageviewPrice.image = [UIImage imageNamed:@"priceIcon.png"];
//    imageviewShowCar = [[DYImageView alloc] initWithFrame:CGRectMake(0, 0, 131, 131)];
//    imageviewShowCar.image = [UIImage imageNamed:@"showcarIcon.png"];
    arrImage = [[NSMutableArray alloc] initWithObjects:imageviewBi, imageviewCustomerInfo, imageviewDesire, imageviewMyInfo, imageviewOrder, nil];
#endif
}
//显示方式是确定圆心正下方的点，然后逆时针绘制点
- (void)showImage{
    DYCircleView *circleView = [[DYCircleView alloc] initWithFrame:CGRectMake(0, 64, 400, 500)];
    circleView.arrImages = arrImage;
    circleView.delegate = self;
    [self.view addSubview:circleView];
    [circleView loadView];
}
#pragma mark GDDelegate
- (void)didSelectItemAtSuperView:(NSInteger)index {
    
    NSLog(@"%lu",index);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
