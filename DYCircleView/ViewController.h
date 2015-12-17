//
//  ViewController.h
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

#import <UIKit/UIKit.h>
#import "DYImageView.h"
@interface ViewController : UIViewController
<
UIGestureRecognizerDelegate
>{
    DYImageView *imageviewBi;
    DYImageView *imageviewCustomerInfo;
    DYImageView *imageviewDesire;
    DYImageView *imageviewMyInfo;
    DYImageView *imageviewOrder;
    DYImageView *imageviewPrice;
    DYImageView *imageviewShowCar;
    
    DYImageView *image1;
    DYImageView *image2;
    DYImageView *image3;
    DYImageView *image4;
    
    NSMutableArray *arrImage;
    
    CGPoint pointCenter;
    CGFloat fRadius;//半径
    CGFloat fAvarage_Radina;//平均角度
    CGPoint pointDrag;
    NSInteger iCurrentIndex;
    NSInteger iStep;
}


@end

