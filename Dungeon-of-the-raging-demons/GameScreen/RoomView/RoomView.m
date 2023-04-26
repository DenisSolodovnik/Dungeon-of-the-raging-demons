//
//  RoomView.m
//  Dungeon-of-the-raging-demons
//
//  Created by Денис Солодовник on 12.03.2023.
//

#import "RoomView.h"

@interface RoomView ()

// MARK: - Outlets

@property (weak, nonatomic) IBOutlet UIImageView *groundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *northWallImageView;
@property (weak, nonatomic) IBOutlet UIImageView *southWallImageView;
@property (weak, nonatomic) IBOutlet UIImageView *westWallImageView;
@property (weak, nonatomic) IBOutlet UIImageView *eastWallImageView;

@property NSString *groundImageName;
@property NSString *northWallImageName;
@property NSString *southWallImageName;
@property NSString *westWallImageName;
@property NSString *eastWallImageName;

@property NSString *resourcePath;

@end

@implementation RoomView

- (void)showRoom:(RoomData)data {
    [self setResourcePrefix:data.background];
    [self loadResources];
}

- (void)setResourcePrefix:(RoomBackground)roomType {
    switch (roomType) {
        case shallowCaveGround:
            self.resourcePath = @"Shallow/";
            break;
        case deepCaveGround:
            self.resourcePath = @"DeepCave/";
            break;
        case hellGround:
            self.resourcePath = @"Hell/";
            break;
    }
}

- (void)setResourceName:(RoomExits)exits {
    self.groundImageName = @"ground";
    self.northWallImageName = exits.north ? @"northWallDoor" : @"northWall";
    self.groundImageName = exits.south ? @"southWallDoor" : @"southWall";
    self.groundImageName = exits.west ? @"westWallDoor" : @"westWall";
    self.groundImageName = exits.east ? @"eastWallDoor" : @"eastWall";
}

- (void)loadResources {
    NSString *ground = [self.resourcePath stringByAppendingString:self.groundImageName];
    NSString *northWall = [self.resourcePath stringByAppendingString:self.northWallImageName];
    NSString *southWall = [self.resourcePath stringByAppendingString:self.southWallImageName];
    NSString *westWall = [self.resourcePath stringByAppendingString:self.westWallImageName];
    NSString *eastWall = [self.resourcePath stringByAppendingString:self.eastWallImageName];

    self.groundImageView.image = [UIImage imageNamed:ground];
    self.northWallImageView.image = [UIImage imageNamed:northWall];
    self.southWallImageView.image = [UIImage imageNamed:southWall];
    self.westWallImageView.image = [UIImage imageNamed:westWall];
    self.eastWallImageView.image = [UIImage imageNamed:eastWall];
}

@end
