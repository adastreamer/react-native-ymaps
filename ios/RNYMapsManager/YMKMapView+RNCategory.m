//
//  YMKMapView+RNCategory.m
//  RNYMapsManager
//
//  Created by Лидия Хашина on 11.10.15.
//  Copyright © 2015 Online-Lab. All rights reserved.
//

#import "YMKMapView+RNCategory.h"

@interface YMKMapView() <CLLocationManagerDelegate>

@end

@implementation YMKMapView (RNCategory)

CLLocationManager *_locationManager;

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
// followUserLocation getter/setter
- (BOOL)showUserLocation {
    return self.frame.size.height;
}
- (void)setShowUserLocation:(BOOL)showUserLocation{
    if (showUserLocation) {
        [self setShowsUserLocation:true];
        [self setTracksUserLocation:true];
    }
    if (_locationManager == nil)
    {
        _locationManager = [[CLLocationManager alloc] init];
        _locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
        _locationManager.delegate = self;
    }
    [_locationManager startUpdatingLocation];
}
/**/


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation *newLocation = [locations lastObject];
    YMKMapRegion region;
    region.center = newLocation.coordinate;
    [self setCenterCoordinate:newLocation.coordinate atZoomLevel:16 animated:YES];
    // [manager stopUpdatingLocation];
}
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Cannot find the location.");
}

@end
