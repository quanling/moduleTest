//
//  UIButton+CMPMExtension.h
//  CommunityMPM
//
//  Created by shengangneng on 2019/4/7.
//  Copyright © 2019年 jifenzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (CMPMExtension)

/** 设置普通按钮 */
+ (UIButton *)normalButtonWithTitle:(NSString *)title titleColor:(UIColor *)tColor bgcolor:(UIColor *)color;

/**
 * @brief 快速设置按钮
 * @param nTi 普通状态下按钮文字
 * @param hTi 高亮状态下按钮文字
 * @param sTi 选中状态下按钮文字
 * @param nC 普通状态下按钮颜色
 * @param hC 高亮状态下按钮颜色
 * @param sC 选中状态下按钮颜色
 * @param nIn 普通状态下按钮图片
 * @param hIn 高亮状态下按钮图片
 * @param sIn 选中状态下按钮图片
 */
+ (UIButton *)buttonWithNTitle:(nullable NSString *)nTi
                        hTitle:(nullable NSString *)hTi
                        sTitle:(nullable NSString *)sTi
                        nColor:(nullable UIColor *)nC
                        hColor:(nullable UIColor *)hC
                        sColor:(nullable UIColor *)sC
                       nImageN:(nullable NSString *)nIn
                       hImageN:(nullable NSString *)hIn
                       sImageN:(nullable NSString *)sIn;


/** 文字 + 背景图片按钮 */
+ (UIButton *)titleButtonWithTitle:(NSString *)title nTitleColor:(UIColor *)nColor hTitleColor:(UIColor *)hColor nBGImage:(UIImage *)nImage hImage:(UIImage *)hImage;

/** 文字 + 背景色按钮 */
+ (UIButton *)titleButtonWithTitle:(NSString *)title nTitleColor:(UIColor *)nColor hTitleColor:(UIColor *)hColor bgColor:(UIColor *)bgColor;

/** 图片按钮 */
+ (UIButton *)imageButtonWithImage:(UIImage *)image hImage:(UIImage *)hImage;

/** 文字在左 + 图片在右 */
+ (UIButton *)rightImageButtonWithTitle:(NSString *)title nTitleColor:(UIColor *)nColor hTitleColor:(UIColor *)hColor nImage:(UIImage *)nImage hImage:(UIImage *)hImage titleEdgeInset:(UIEdgeInsets)tInset imageEdgeInset:(UIEdgeInsets)imInset ;

/** 设置图片在上，文字在下的按钮 */
+ (UIButton *)imageUpTitleDownButtonWithTitle:(NSString *)title
                                   titleColor:(UIColor *)titleColor
                                    titleFont:(UIFont *)font
                                        image:(UIImage *)image
                                    highImage:(UIImage *)highImage
                               backgroupColor:(UIColor *)bgColor
                                 cornerRadius:(CGFloat)radius
                                       offset:(CGFloat)offset;

+ (UIButton *)rightImageBtnWithNTitle:(NSString *)nTitle hTitle:(NSString *)hTitle ntColor:(UIColor *)ntColor htColor:(UIColor *)htColor rImage:(UIImage *)rImg margin:(CGFloat)margin;

@end

NS_ASSUME_NONNULL_END
