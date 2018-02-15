//
//  settingpage.swift
//  ZombieConga
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit
import AVFoundation
import UIKit
class settingpage: SKScene {
    var backbutton = SKSpriteNode()
    var mutebutton = SKSpriteNode()
    var backgroundMusicPlayer = AVAudioPlayer()
    var mute: Bool = false
    override func didMove(to view: SKView) {

        let background = SKSpriteNode(imageNamed: "MainMenu")
        let backbuttontax = SKTexture(imageNamed: "back")
        let mutetax = SKTexture(imageNamed: "mute")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)

        backbutton = SKSpriteNode(texture: backbuttontax)
        backbutton.position = CGPoint(x: 100 , y: 255)
        backbutton.setScale(1.0)
        addChild(backbutton)

        mutebutton = SKSpriteNode(texture: mutetax)
        mutebutton.position = CGPoint(x: frame.midX , y: frame.midY)
        mutebutton.setScale(0.5)
        addChild(mutebutton)

    }



    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)

            if node == backbutton   {
                if let view = view {
                    let scene = MainMenuScene(size: size)
                    let transition:SKTransition = SKTransition.fade(withDuration: 1)
                    scene.scaleMode = SKSceneScaleMode.aspectFill
                    view.presentScene(scene, transition: transition)
                }
            }
            if node == mutebutton   {
                if mute {
                    //This runs if the user wants music
                    print("The button will now turn on music.")
                    mute = false
                    backgroundMusicPlayer.play()
                    //backgroundMusicPlayer.volume = 1 //this is a .mp3 file
                } else {
                    //This happens when the user doesn't want music
                    print("the button will now turn off music.")
                    mute = true
                    backgroundMusicPlayer.stop()
                    //backgroundMusicPlayer.volume = 0
                }

            }

        }

    }

}
