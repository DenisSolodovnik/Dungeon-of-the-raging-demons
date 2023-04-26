//
//  GameScreenController.h
//  Dungeon-of-the-raging-demons
//
//  Created by Денис Солодовник on 09.03.2023.
//

#ifndef GameScreenController_h
#define GameScreenController_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "GameTypes.h"

@interface GameScreenController : UIViewController

@property (nonatomic, copy, nullable) void (^didTapDirectionButton)(Directions);

- (instancetype _Nullable)initWithCoder:(NSCoder * _Nullable)coder NS_UNAVAILABLE;
- (instancetype _Nonnull)initWithNibName:(NSString * _Nullable)nibNameOrNil
                                  bundle:(NSBundle * _Nullable)nibBundleOrNil NS_UNAVAILABLE;

- (void)showInterface;
- (void)showRoom:(RoomData)data;

@end

#endif /* GameScreenController_h */
