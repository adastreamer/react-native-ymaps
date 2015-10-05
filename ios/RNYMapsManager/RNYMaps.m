
#import "RNYMaps.h"

#import "RCTEventDispatcher.h"
#import "RCTLog.h"
#import "RCTUtils.h"

@implementation RNYMaps
{
  UIView *_legalLabel;
  CLLocationManager *_locationManager;
}

- (instancetype)init
{
  
  if ((self = [super init])) {
    _hasStartedRendering = NO;
  }
  return self;
}

- (void)dealloc
{
  [_regionChangeObserveTimer invalidate];
}

- (void)reactSetFrame:(CGRect)frame
{
  self.frame = frame;
}


@end
