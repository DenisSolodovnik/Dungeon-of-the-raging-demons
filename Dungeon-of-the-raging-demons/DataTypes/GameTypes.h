//
//  GameTypes.h
//  Dungeon-of-the-raging-demons
//
//  Created by Денис Солодовник on 27.03.2023.
//

#ifndef GameTypes_h
#define GameTypes_h

#define DIRECTIONS_COUNT 4

// MARK: - Directions

typedef enum Directions: int {
    north = 0,
    south,
    east,
    west
} Directions;

// MARK: - Room

typedef enum RoomBackground: int {
    shallowCaveGround = 0,
    deepCaveGround,
    hellGround
} RoomBackground;

typedef struct {
    bool north;
    bool south;
    bool west;
    bool east;
} RoomExits;

typedef struct {
    RoomExits exits;
    RoomBackground background;
} RoomData;

#undef DIRECTIONS_COUNT

#endif /* GameTypes_h */
