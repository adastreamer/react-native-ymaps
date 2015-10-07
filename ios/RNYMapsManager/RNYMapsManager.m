//
//  RNYMapsManager.m
//  Online-Lab
//

#import "RNYMapsManager.h"

#import "RCTBridge.h"
#import "RCTConvert+CoreLocation.h"
#import "RCTConvert+MapKit.h"
#import "RCTEventDispatcher.h"
#import "RNYMaps.h"
#import "UIView+React.h"
#import "RCTPointAnnotation.h"

#import "YandexMapKit.h"


static NSString *const RNYMapsViewKey = @"YMapView";
static YMKMapView *map;



@implementation RNYMapsManager

RCT_EXPORT_MODULE()

- (UIView *)view
{

    [YMKConfiguration sharedInstance].apiKey = @"AvwcIwixF7APTvAOC6j9KbbzqNANVAh1SmjZplh~3EKmQVbJCp41qHR6djmVLmoSG6vjY8MdfBtXCgo6aHstSpTO9Zo-RTzaXDiJHqg5-H8=";

    
    map = [YMKMapView new];
    
//    CGRect screenRect = [[UIScreen mainScreen] bounds];
//    CGFloat screenWidth = screenRect.size.width;
//    CGFloat screenHeight = screenRect.size.height;
    
    
    
    CGRect cgrect;

    cgrect.size.height = 100;
    cgrect.size.width = 100;
    
    map.frame = cgrect;

    return map;
}

@end