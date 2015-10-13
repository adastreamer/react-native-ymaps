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

#import "Definitions.h"
#import "YandexMapKit.h"
#import "YMKMapView+RNCategory.h"

static NSString *const RNYMapsViewKey = @"YMapView";
static YMKMapView *map;

@implementation RNYMapsManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    [YMKConfiguration sharedInstance].apiKey = YMAPS_API_KEY;
    map = [YMKMapView new];
    return map;
}

RCT_EXPORT_VIEW_PROPERTY(width, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(height, CGFloat)

@end