
#import <UIKit/UIKit.h>

#import "RCTConvert+MapKit.h"
#import "RCTComponent.h"

#import "YandexMapKit.h"

extern const CLLocationDegrees RNYMapsDefaultSpan;
extern const NSTimeInterval RNYMapsRegionChangeObserveInterval;
extern const CGFloat RNYMapsZoomBoundBuffer;

@interface RNYMaps: YMKMapView

@property (nonatomic, assign) BOOL followUserLocation;
@property (nonatomic, assign) BOOL hasStartedRendering;
@property (nonatomic, assign) CGFloat minDelta;
@property (nonatomic, assign) CGFloat maxDelta;
@property (nonatomic, assign) UIEdgeInsets legalLabelInsets;
@property (nonatomic, strong) NSTimer *regionChangeObserveTimer;
@property (nonatomic, strong) NSMutableArray *annotationIds;

@property (nonatomic, copy) RCTBubblingEventBlock onChange;
@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end
