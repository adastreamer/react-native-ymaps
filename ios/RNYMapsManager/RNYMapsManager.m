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

@interface RNYMapsManager() <YMKMapViewDelegate>
@end

@implementation RNYMapsManager

RCT_EXPORT_MODULE()

- (UIView *)view {
    [YMKConfiguration sharedInstance].apiKey = YMAPS_API_KEY;
    map = [YMKMapView new];
    [map setDelegate:self];
    return map;
}

- (void)mapView:(YMKMapView *)mapView didUpdateUserLocation:(YMKUserLocation *)userLocation {
}

RCT_EXPORT_VIEW_PROPERTY(width, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(height, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(showUserLocation, BOOL)
RCT_EXPORT_VIEW_PROPERTY(atZoomLevel, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(showTraffic, BOOL)

@end