//
//  ViewController.swift
//  Project1_Naruto_Intro
//
//  Created by Arun Deegutla on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    let goals = PageInfo(name: "My Goals", image: UIImage(named: "naruto_hokage")!, text: "Believe it! I'm Naruto Uzumaki, the number one hyperactive, knuckleheaded ninja of the Hidden Leaf Village! I may not be the strongest or the smartest, but I never give up and I always keep my promises. My dream is to become the Hokage, the strongest ninja in the village, and to be acknowledged by everyone. I love training, eating ramen, and spending time with my friends, especially my teammate Sasuke and my sensei Kakashi. Let's go on some crazy adventures together, dattebayo!")
    let friends = PageInfo(name: "My Friends", image: UIImage(named: "naruto_friends")!, text: "My friends are the best, believe it! I've got Sasuke, Sakura, Kakashi, Hinata, Shikamaru, and so many more awesome people in my life. They've always got my back, no matter what kind of crazy adventures we go on or challenges we face. I may be a bit of a goofball sometimes, but I know that my friends are always there for me, just like I'm there for them. Together, we can take on anything and everything! Let's go, dattebayo!")
    let jutsus = PageInfo(name: "My Jutsus", image: UIImage(named: "rasengan")!, text: "Oh man, there are so many cool jutsus that I love to use! One of my absolute favorites is the Rasengan. It's an incredibly powerful move that I learned from my dad, and it took me forever to master. But now that I've got it down, it's unstoppable! I also really like the Shadow Clone Jutsu, because it allows me to create multiple copies of myself and overwhelm my opponents. And let's not forget about Sage Mode, which lets me tap into the power of nature and become super strong. With all these jutsus in my arsenal, I'm ready for anything! Let's go, dattebayo!")

    // Array for storing infos
    var infos: [PageInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infos = [goals, friends, jutsus]
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "detailsSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailsSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {
        
            if tappedView.tag == 0 {
                detailViewController.pageInfo = infos[0]
            } else if tappedView.tag == 1 {
                detailViewController.pageInfo = infos[1]
            } else if tappedView.tag == 2 {
                detailViewController.pageInfo = infos[2]
            }
        }
    }
    
}

