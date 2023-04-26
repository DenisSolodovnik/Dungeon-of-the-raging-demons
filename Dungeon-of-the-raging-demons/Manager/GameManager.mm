//
//  GameManager.mm
//  Dungeon-of-the-raging-demons
//
//  Created by Денис Солодовник on 26.06.2023.
//

#import "GameManager.hh"
#import "GameCenterControllerModel.hpp"
#import "GameScreenController.h"

@interface GameManager ()

@property(strong, nonatomic) UIWindow *window;
@property GameCenterController::GameCenterControllerModel gameCenterControllerModel;

@end

@implementation GameManager

- (instancetype)initWithWindow:(UIWindow *)window {
    self = [super init];

    _window = window;
    _gameCenterControllerModel = GameCenterController::GameCenterControllerModel();

    [self showGameScreen];

    return self;
}

- (void)showGameScreen {
    GameScreenController *gameScreenController = [GameScreenController new];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:gameScreenController];

    __weak GameManager *weakSelf = self;
    gameScreenController.didTapDirectionButton = ^(Directions direction) {
        [weakSelf didTapDirectionButton:direction];
    };

    self.window.rootViewController = navController;

    [gameScreenController showInterface];
}

#pragma mark Interface methods

- (void)didTapDirectionButton:(Directions)direction {
    
}

@end
