//
//  character.swift
//  RPGOOP
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name: String = "Player"
    var  name: String {
                        get {
                            return self._name
                        }
                      }
    
    
    private var _inventory = [String]()
    
    
    var inventory: [String] {
                                get {
                                    return self._inventory
                                }
                              }
    
    convenience init(Hp:Int,attackPwr:Int,name:String) {
        
        self.init(startHp: Hp,attackPwr: attackPwr)
        
        self._name = name
        
    }
    
    func addItem(item: String) {
        self._inventory.append(item)
    }
}