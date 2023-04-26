//
//  GameCenterControllerModel.hpp
//  Dungeon-of-the-raging-demons
//
//  Created by Денис Солодовник on 15.04.2023.
//

#ifndef GameCenterControllerModel_hpp
#define GameCenterControllerModel_hpp

#import "GameTypes.h"

namespace GameCenterController {

class GameCenterControllerModel {
public:
    GameCenterControllerModel();
    ~GameCenterControllerModel();

    void didTapDirectionButton(Directions direction);
};

} // namespace GameCenterController

#endif /* GameCenterControllerModel_hpp */
