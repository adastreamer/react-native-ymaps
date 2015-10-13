//
//  YMKMapView+RNCategory.m
//  RNYMapsManager
//
//  Created by Лидия Хашина on 11.10.15.
//  Copyright © 2015 Online-Lab. All rights reserved.
//

#import "YMKMapView+RNCategory.h"

@implementation YMKMapView (RNCategory)

/* SIZES FEATURE */
// width getter/setter
- (CGFloat)width {
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)newWidth{
    NSLog(@"init width");
    CGRect cgrect = self.frame;
    cgrect.size.width = newWidth;
    self.frame = cgrect;
}
// height getter/setter
- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)newHeight{
    NSLog(@"init height");
    CGRect cgrect = self.frame;
    cgrect.size.height = newHeight;
    self.frame = cgrect;
}
/**/

@end
