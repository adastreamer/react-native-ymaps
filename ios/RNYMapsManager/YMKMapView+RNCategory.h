//
//  YMKMapView+RNCategory.h
//  RNYMapsManager
//
//  Created by Лидия Хашина on 11.10.15.
//  Copyright © 2015 Online-Lab. All rights reserved.
//

#import "YMKMapView.h"

@interface YMKMapView (RNCategory)

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) BOOL showUserLocation;
@property (nonatomic, assign) CGFloat atZoomLevel;
@property (nonatomic, assign) BOOL showTraffic;

@end
