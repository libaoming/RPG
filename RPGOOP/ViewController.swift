//
//  ViewController.swift
//  RPGOOP
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var chessMessage:String?

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerLbl: UILabel!
    
    @IBOutlet weak var enemyLbl: UILabel!
    
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    
    @IBAction func onChestTapped(sender: UIButton) {
        
        chestBtn.hidden = true
        printLbl.text = chessMessage
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateEnemy), userInfo: nil, repeats: false)
        
        
        
    }
    
    
    
    @IBAction func onAttackTapped(sender: UIButton) {
        
        if enemy.attempAttack(player.attackPwr) {
            printLbl.text = "attacked  \(enemy.type)  for \(player.attackPwr) HP"
            enemyLbl.text = "\(enemy.hp) HP"
        }else {
            
            printLbl.text = "attack is unsucsess..."
        }
        
        if let loot = enemy.dropLoot() {
            chessMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
            player.addItem(loot)
        }
        
        if  !enemy.isLive {
            enemyLbl.text = ""
            printLbl.text = "\(enemy.type) is attacked! "
            enemyImg.hidden = true
        }
        
        
    }
    
    
    var player: Player!
    var enemy: Enemy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(Hp: 110, attackPwr: 20, name: "zoe boss")
        playerLbl.text = "\(player.hp) HP"
        
        generateEnemy()
       
        
        
    }
    
    func generateEnemy (){
        let rand = Int(arc4random_uniform(2))
        if rand == 0 {
            enemy = Kimara(startHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startHp: 60, attackPwr: 15)
        }
        
        enemyImg.hidden = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

