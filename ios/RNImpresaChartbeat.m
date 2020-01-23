#import "RNImpresaChartbeat.h"

@implementation RNImpresaChartbeat

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(setupTracker:(int)uid domain:(NSString *)domain)
{
  // TODO: Set the ritgh info
  [[CBTracker sharedTracker] setupTrackerWithAccountId:uid domain:domain];
  RCTLogInfo(@"Chartbeat setup complete!");
}

RCT_EXPORT_METHOD(callAnalytics:(NSString *)viewId title:(NSString *)title)
{
  RCTLogInfo(@"trackViewWithId %@ and title %@", viewId, title);
  UIView *rootView = [UIApplication sharedApplication].keyWindow.rootViewController.view;
  
  [[CBTracker sharedTracker] trackView:rootView viewId:viewId title:title];
}

RCT_EXPORT_METHOD(setAuthors:(NSArray *)authors)
{
  RCTLogInfo(@"Settings Sections... %@", authors);
  [[CBTracker sharedTracker] setSections:authors];
}

RCT_EXPORT_METHOD(setSections:(NSArray *)sections)
{
  RCTLogInfo(@"Settings Authors... %@", sections);
  [[CBTracker sharedTracker] setAuthors:sections];
}

@end
