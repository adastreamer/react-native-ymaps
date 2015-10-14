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
CGFloat _atZoomLevel;

// atZoomLevel getter/setter
- (CGFloat)atZoomLevel {
    return _atZoomLevel;
}
- (void)setAtZoomLevel:(CGFloat)newZoomLevel {
    _atZoomLevel = newZoomLevel;
}
/**/

// showTraffic getter/setter
- (BOOL)showTraffic {
    return self.showTraffic;
}
- (void)setShowTraffic:(BOOL)showTraffic {
    self.showTraffic = showTraffic;
}
/**/

// width getter/setter
- (CGFloat)width {
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)newWidth {
    CGRect cgrect = self.frame;
    cgrect.size.width = newWidth;
    self.frame = cgrect;
}
/**/

// height getter/setter
- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)newHeight {
    CGRect cgrect = self.frame;
    cgrect.size.height = newHeight;
    self.frame = cgrect;
}
/**/

// followUserLocation getter/setter
- (BOOL)showUserLocation {
    return self.frame.size.height;
}
- (void)setShowUserLocation:(BOOL)showUserLocation {
    if (showUserLocation) {
        [self setShowsUserLocation:true];
        [self setTracksUserLocation:true];
        _locationManager = [[CLLocationManager alloc] init];
        [_locationManager setDesiredAccuracy:kCLLocationAccuracyNearestTenMeters];
        [_locationManager setDelegate:self];
        [_locationManager startUpdatingLocation];
    }
}
/**/

#pragma mark CLLocationManagerDelegate

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation *newLocation = [locations lastObject];
    YMKMapRegion region;
    region.center = newLocation.coordinate;
    [self setCenterCoordinate:newLocation.coordinate atZoomLevel:_atZoomLevel animated:YES];
    [manager stopUpdatingLocation];
}
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
}

@end
