//
//  CalendarController.h
//  TapkuCalendarDemo
//
//  Created by Ben Pearson on 8/01/11.
//  Copyright 2011 Developing in the Dark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKCalendarMonthView.h"
#import "DataViewController.h"
//#import "TaskActivity.h"
//#import "TaskSelectActivity.h"

@protocol CalendarControllerDelegate <NSObject>

- (void)setContentSizeForPopover:(CGSize)size;
- (void)dismissPopoverWithSelectedDate:(NSDate *)date;

@end

@interface CalendarController : UIViewController <TKCalendarMonthViewDelegate,TKCalendarMonthViewDataSource> 

{
	TKCalendarMonthView *calendar;	
}

@property (nonatomic, retain) TKCalendarMonthView *calendar;
//@property (nonatomic, retain) TaskActivity *aSender;
//@property (nonatomic, retain) TaskSelectActivity *bSender;
@property (nonatomic, assign) id<CalendarControllerDelegate> delegate;

@end
