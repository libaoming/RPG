//
//  Kimara.swift
//  RPGOOP
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    let IMMUNE_MAX = 15
    override var loot: [String] {
        return ["Tough Hide","Kimara Venom","Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attempAttack(attackPwr: Int) -> Bool {
        if self.IMMUNE_MAX <= attackPwr {
            return super.attempAttack(attackPwr)
        }
        
        return false
    }
}