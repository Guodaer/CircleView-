//
//  DYImageView.h
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

@interface DYImageView : UIImageView
//与y轴实时角度（逆时针方向），用于在拖动时候确定DragImageView的中心
@property(nonatomic) CGFloat current_radian;

//记录该位置初始的角度（与y轴）
@property(nonatomic) CGFloat radian;

//与x轴实时角度 用于DragImageView拖动停止后的旋转
@property(nonatomic) CGFloat current_animation_radian;

//记录该位置初始角度（与x轴）
@property(nonatomic) CGFloat animation_radian;

//DragImageView的中心
@property(nonatomic) CGPoint view_point;



@end
