//
//  UIButton+CMPMExtension.m
//  CommunityMPM
//
//  Created by shengangneng on 2019/4/7.
//  Copyright © 2019年 jifenzhi. All rights reserved.
//

#import "UIButton+CMPMExtension.h"

@implementation UIButton (CMPMExtension)

/** 设置普通按钮 */
+ (UIButton *)normalButtonWithTitle:(NSString *)title titleColor:(UIColor *)tColor bgcolor:(UIColor *)color {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateHighlighted];
    [btn setTitleColor:tColor forState:UIControlStateNormal];
    [btn setTitleColor:tColor forState:UIControlStateHighlighted];
    if (color) {
        [btn setBackgroundColor:color];
    }
    return btn;
}

+ (UIButton *)buttonWithNTitle:(nullable NSString *)nTi
                        hTitle:(nullable NSString *)hTi
                        sTitle:(nullable NSString *)sTi
                        nColor:(nullable UIColor *)nC
                        hColor:(nullable UIColor *)hC
                        sColor:(nullable UIColor *)sC
                       nImageN:(nullable NSString *)nIn
                       hImageN:(nullable NSString *)hIn
                       sImageN:(nullable NSString *)sIn
{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    if (nTi && hTi && sTi) {
        [btn setTitle:nTi forState:UIControlStateNormal];
        [btn setTitle:hTi forState:UIControlStateHighlighted];
        [btn setTitle:sTi forState:UIControlStateSelected];
    }
    if (nC && hC && sC) {
        [btn setTitleColor:nC forState:UIControlStateNormal];
        [btn setTitleColor:hC forState:UIControlStateHighlighted];
        [btn setTitleColor:sC forState:UIControlStateSelected];
    }
    if (nIn && hIn && sIn) {
        [btn setImage:[UIImage imageNamed:nIn] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:hIn] forState:UIControlStateHighlighted];
        [btn setImage:[UIImage imageNamed:sIn] forState:UIControlStateSelected];
    }
    
    return btn;
}

/** 文字 + 背景图片按钮 */
+ (UIButton *)titleButtonWithTitle:(NSString *)title nTitleColor:(UIColor *)nColor hTitleColor:(UIColor *)hColor nBGImage:(UIImage *)nImage hImage:(UIImage *)hImage {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateHighlighted];
    [btn setTitleColor:nColor forState:UIControlStateNormal];
    [btn setTitleColor:hColor forState:UIControlStateHighlighted];
    if (nImage) {
        [btn setBackgroundImage:nImage forState:UIControlStateNormal];
    }
    if (hImage) {
        [btn setBackgroundImage:hImage forState:UIControlStateHighlighted];
    }
    return btn;
}

/** 文字 + 背景色按钮 */
+ (UIButton *)titleButtonWithTitle:(NSString *)title nTitleColor:(UIColor *)nColor hTitleColor:(UIColor *)hColor bgColor:(UIColor *)bgColor {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateHighlighted];
    [btn setTitleColor:nColor forState:UIControlStateNormal];
    [btn setTitleColor:hColor forState:UIControlStateHighlighted];
    if (bgColor) {
        [btn setBackgroundColor:bgColor];
    }
    return btn;
}

/** 图片按钮 */
+ (UIButton *)imageButtonWithImage:(UIImage *)image hImage:(UIImage *)hImage {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    if (image) {
        [btn setBackgroundImage:image forState:UIControlStateNormal];
    }
    if (hImage) {
        [btn setBackgroundImage:hImage forState:UIControlStateHighlighted];
    }
    return btn;
}

/** 文字在左 + 图片在右 */
+ (UIButton *)rightImageButtonWithTitle:(NSString *)title nTitleColor:(UIColor *)nColor hTitleColor:(UIColor *)hColor nImage:(UIImage *)nImage hImage:(UIImage *)hImage titleEdgeInset:(UIEdgeInsets)tInset imageEdgeInset:(UIEdgeInsets)imInset {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateHighlighted];
    [btn setTitleColor:nColor forState:UIControlStateNormal];
    [btn setTitleColor:hColor forState:UIControlStateHighlighted];
    if (nImage) [btn setImage:nImage forState:UIControlStateNormal];
    if (hImage) [btn setImage:hImage forState:UIControlStateHighlighted];
    btn.titleEdgeInsets = tInset;
    btn.imageEdgeInsets = imInset;
    btn.semanticContentAttribute = UISemanticContentAttributeForceRightToLeft;   //图片在右侧
    return btn;
}

/** 设置图片在上，文字在下的按钮 */
+ (UIButton *)imageUpTitleDownButtonWithTitle:(NSString *)title
                                   titleColor:(UIColor *)titleColor
                                    titleFont:(UIFont *)font
                                        image:(UIImage *)image
                                    highImage:(UIImage *)highImage
                               backgroupColor:(UIColor *)bgColor
                                 cornerRadius:(CGFloat)radius
                                       offset:(CGFloat)offset {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateHighlighted];
    [btn setBackgroundColor:bgColor];
    if (radius > 0) {
        btn.layer.cornerRadius = radius;
        btn.layer.masksToBounds = YES;
    }
    [btn setImage:image forState:UIControlStateNormal];
    if (!highImage) {
        [btn setImage:image forState:UIControlStateHighlighted];
    } else {
        [btn setImage:highImage forState:UIControlStateHighlighted];
    }
    
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, -btn.imageView.intrinsicContentSize.width, -btn.imageView.intrinsicContentSize.height-offset/2, 0);
    btn.imageEdgeInsets = UIEdgeInsetsMake(-btn.titleLabel.intrinsicContentSize.height-offset/2, 0, 0, -btn.titleLabel.intrinsicContentSize.width);
    
    
    return btn;
}

+ (UIButton *)rightImageBtnWithNTitle:(NSString *)nTitle hTitle:(NSString *)hTitle ntColor:(UIColor *)ntColor htColor:(UIColor *)htColor rImage:(UIImage *)rImg margin:(CGFloat)margin {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectZero];
    [btn setTitle:nTitle forState:UIControlStateNormal];
    [btn setTitle:hTitle forState:UIControlStateHighlighted];
    [btn setTitleColor:ntColor forState:UIControlStateNormal];
    [btn setTitleColor:htColor forState:UIControlStateHighlighted];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:rImg];
    [btn addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(rImg.size.width));
        make.height.equalTo(@(rImg.size.height));
        make.leading.equalTo(btn.mas_trailing).offset(margin);
        make.centerY.equalTo(btn.mas_centerY);
    }];
    return btn;
}

@end
