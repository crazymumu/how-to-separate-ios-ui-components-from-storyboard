//
//  RoundButton.m
//  UI
//
//  Created by Mu-Sheng Wu on 2017-12-08.
//  Copyright © 2017 Mu-Sheng Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RoundButton.h"

@implementation RoundButton

- (void)setCornerRadius {
    self.layer.cornerRadius = self.cornerRadius;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setCornerRadius];
}

@end
