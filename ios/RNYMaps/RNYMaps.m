//
//  RNYMaps.m
//  Online-Lab
//

#import "RNYMaps.h"

@interface RNYMaps()

@end

@implementation RNYMaps
{

}

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

- (NSDictionary *)constantsToExport
{
    UIDevice *currentDevice = [UIDevice currentDevice];

    return @{
             @"systemName": currentDevice.systemName,
             };
}

@end
