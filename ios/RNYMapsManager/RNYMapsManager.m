//
//  RNYMapsManager.m
//  Online-Lab
//

#import "RNYMapsManager.h"

#import "RCTBridge.h"
#import "RCTConvert+CoreLocation.h"
#import "RCTConvert+MapKit.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"
#import "RCTPointAnnotation.h"

#import "YandexMapKit.h"
#import "YMKMapView+RNCategory.h"

static NSString *const RNYMapsViewKey = @"YMapView";
static YMKMapView *map;

@implementation RNYMapsManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    [YMKConfiguration sharedInstance].apiKey = @"AvwcIwixF7APTvAOC6j9KbbzqNANVAh1SmjZplh~3EKmQVbJCp41qHR6djmVLmoSG6vjY8MdfBtXCgo6aHstSpTO9Zo-RTzaXDiJHqg5-H8=";
    map = [YMKMapView new];
    return map;
}

RCT_EXPORT_VIEW_PROPERTY(width, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(height, CGFloat)

@end