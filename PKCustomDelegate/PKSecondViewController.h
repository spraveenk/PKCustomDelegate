//
//  PKSecondViewController.h
//  PKCustomDelegate
//
//  Created by spraveenk91 on 12/26/13.
//  Copyright (c) 2013 spraveenk91. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PKCustomDelegate <NSObject>

@required
-(void)resultCallBack:(NSString *)result;

@end

@interface PKSecondViewController : UIViewController

@property (nonatomic) id<PKCustomDelegate> delegate;

@end
