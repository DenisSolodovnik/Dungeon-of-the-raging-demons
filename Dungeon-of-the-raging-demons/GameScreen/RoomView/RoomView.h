//
//  RoomView.h
//  Dungeon-of-the-raging-demons
//
//  Created by Денис Солодовник on 12.03.2023.
//

#ifndef RoomView_h
#define RoomView_h

#import <UIKit/UIKit.h>
#import "GameTypes.h"

NS_ASSUME_NONNULL_BEGIN

@interface RoomView : UIView

- (void)showRoom:(RoomData) data;

@end

NS_ASSUME_NONNULL_END

#endif /* RoomView_h */
