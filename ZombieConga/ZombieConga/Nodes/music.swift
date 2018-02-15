//
//  music.swift
//  ZombieConga
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit
 import AVFoundation
class music: SKScene{
    var backgroundMusicPlayer = AVAudioPlayer()
    
    func playBackgroundMusic(filename: String) {
        let resourceUrl = Bundle.main.url(forResource:
            filename, withExtension: nil)
        guard let url = resourceUrl else {
            print("Could not find file: \(filename)")
            return
        }
        
        do {
            try backgroundMusicPlayer =
                AVAudioPlayer(contentsOf: url)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
            backgroundMusicPlayer.stop()
        } catch {
            print("Could not create audio player!")
            return
        }
}
}
