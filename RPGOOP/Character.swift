//
//  character.swift
//  RPGOOP
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr:Int = 10
    
    var isLive: Bool {
        get {
            if self._hp <= 0 {
                return false
            }
            
                return true
        
            
        }
    }
    
    
    
    
    
    
    var attackPwr: Int {
                        get {
                                return _attackPwr
                            }
                        }
    
    var hp: Int {
                    get {
                        return _hp
                }
        
       }
    
    init(startHp:Int,attackPwr:Int){
        
        self._hp = startHp
        self._attackPwr = attackPwr
    }
    
    func attempAttack( attackPwr: Int ) -> Bool {
        self._hp -= attackPwr
        return true
        
    }
    
    
    
    

}