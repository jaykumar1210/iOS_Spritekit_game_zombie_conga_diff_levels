/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    var playButton = SKSpriteNode()
    var catLady2Button = SKSpriteNode()
    var sunFlowerButton = SKSpriteNode()
    var smallFishButton = SKSpriteNode()
    var bigFishButton = SKSpriteNode()
    var settingButton = SKSpriteNode()
    
   
    
  override func didMove(to view: SKView) {
    
    let background = SKSpriteNode(imageNamed: "MainMenu")
    let SettingButtonTex = SKTexture(imageNamed: "setting")
    let playButtonTex = SKTexture(imageNamed: "play")
    let catLady2ButtonTex = SKTexture(imageNamed: "enemy")
    let sunFlowerButtonTex = SKTexture(imageNamed: "sunflower")
    let smallFishButtonTex = SKTexture(imageNamed: "smallFish")
    let bigFishButtonTex = SKTexture(imageNamed: "bigFish")
    
    background.position = CGPoint(x: size.width/2, y: size.height/2)
    addChild(background)
    
   
    
    playButton = SKSpriteNode(texture: playButtonTex)
    playButton.position = CGPoint(x: 200 , y: frame.midY)
    playButton.setScale(1.0)
    addChild(playButton)
    
    catLady2Button = SKSpriteNode(texture: catLady2ButtonTex)
    catLady2Button.position = CGPoint(x: 600, y: frame.midY)
    catLady2Button.setScale(1.0)
    addChild(catLady2Button)
    
    
    sunFlowerButton = SKSpriteNode(texture: sunFlowerButtonTex)
    sunFlowerButton.position = CGPoint(x: 900 , y: frame.midY)
    sunFlowerButton.setScale(0.5)
    addChild(sunFlowerButton)
    
    smallFishButton = SKSpriteNode(texture: smallFishButtonTex)
    smallFishButton.position = CGPoint(x: 1300, y: frame.midY)
    smallFishButton.setScale(0.5)
    addChild(smallFishButton)
    
    
    bigFishButton = SKSpriteNode(texture: bigFishButtonTex)
    bigFishButton.position = CGPoint(x: 1700 , y: frame.midY)
    bigFishButton.setScale(0.25)
    addChild(bigFishButton)
    
    settingButton = SKSpriteNode(texture: SettingButtonTex)
    settingButton.position = CGPoint(x: 100 , y: 255)
    settingButton.setScale(3.0)
    addChild(settingButton)
    
   
  }
  
//  func sceneTapped() {
//    let myScene = GameSceneCatLadyBothSide(size: size)
//    myScene.scaleMode = scaleMode
//    let reveal = SKTransition.doorway(withDuration: 1.0)
//    view?.presentScene(myScene, transition: reveal)
//  }

  override func touchesBegan(_ touches: Set<UITouch>,
                             with event: UIEvent?) {
    if let touch = touches.first{
        let pos = touch.location(in: self)
        let node = self.atPoint(pos)
        
        if node == playButton {
            if let view = view {
                let scene = GameScene (size: size)
                let transition:SKTransition = SKTransition.fade(withDuration: 0.5)
            
                scene.scaleMode = SKSceneScaleMode.aspectFill
            view.presentScene(scene, transition: transition)
            }
        }
        if node == catLady2Button {
            if let view = view {
                let scene = GameScene (size: size)
                let transition:SKTransition = SKTransition.fade(withDuration: 0.5)
                scene.obj = 2
                scene.scaleMode = SKSceneScaleMode.aspectFill
            
                view.presentScene(scene, transition: transition)
            }
        }
        if node == sunFlowerButton {
            if let view = view {
                let scene = GameScene (size: size)
                let transition:SKTransition = SKTransition.fade(withDuration: 0.5)
                scene.obj = 1
                scene.scaleMode = SKSceneScaleMode.aspectFill
                view.presentScene(scene, transition: transition)
            }
        }
        if node == smallFishButton {
            if let view = view {
                let scene = GameScene (size: size)
                let transition:SKTransition = SKTransition.fade(withDuration: 0.5)
                scene.obj = 3
                scene.scaleMode = SKSceneScaleMode.aspectFill
                view.presentScene(scene, transition: transition)
            }
        }
        if node == bigFishButton {
            if let view = view {
                let scene = GameScene (size: size)
                let transition:SKTransition = SKTransition.fade(withDuration: 0.5)
                scene.obj = 4
                scene.scaleMode = SKSceneScaleMode.aspectFill
                view.presentScene(scene, transition: transition)
            }
        }
//        if node == settingButton {
//            if let view = view {
//                let scene = settingpage(size: size)
//                let transition:SKTransition = SKTransition.fade(withDuration: 0.5)
//                scene.scaleMode = SKSceneScaleMode.aspectFill
//                view.presentScene(scene, transition: transition)
//            }
//        }
//       
  }

}
}
