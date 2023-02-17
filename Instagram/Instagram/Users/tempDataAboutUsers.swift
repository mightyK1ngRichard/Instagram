//
//  tempDataAboutUsers.swift
//  Instagram
//
//  Created by Дмитрий Пермяков on 17.02.2023.
//

import Foundation

var idCounter: Int = 0 // TODO: Кешировать ID.

class User {
    private let idUser: Int = idCounter
    let surname: String
    let avatar: String?
    
    init(surname: String, avatar: String?) {
        self.surname = surname
        self.avatar = avatar
        idCounter += 1
    }
    
    func getIduser() -> Int {
        return self.idUser
    }
}

var users: [User] = [
    User(surname: "Dmitriy", avatar: "https://sun1.userapi.com/sun1-54/s/v1/ig2/50bsVETBKibM14SvXlw7dcFfyAxEm_2DLnSnnxJeCP_U7BDqnx1t7UoRwWrogxZCyI2USXP5NHdJXsJtwMKMUOmo.jpg?size=640x640&quality=95&type=album"),
    
    User(surname: "Nicolay", avatar: "https://sun9-west.userapi.com/sun9-50/s/v1/ig2/H8KaoVlGfsC5Uzb15g39J6X6KxXCBszeygXnxpHXlbRK0DYXAunGPkkRbBE_nnXXZsX_azzg1vJ3LeC8eYUilwvs.jpg?size=1266x1688&quality=95&type=album"),
    
    User(surname: "Yaroslav", avatar: "https://sun9-west.userapi.com/sun9-69/s/v1/ig2/RbeVGdFQUmAfJNTT1EgyaY_WXzquyRTpBYBT7QtLHbLWcXaYB6QP3R561YQVzY_voqtSd8HYSWtub8LCbL5Ezxn4.jpg?size=2154x2160&quality=96&type=album"),
    
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
    User(surname: "Nikita", avatar: "https://sun1.userapi.com/sun1-24/s/v1/ig2/JpWd3GTLodVnpdopr5DH_aGgw5G2Luxpl2fM_OvmbVIsFgaT1_JRAMreCxunYZuBOSLzA81u6yDbeN_qTKwyRjVB.jpg?size=1620x2160&quality=95&type=album"),
]
