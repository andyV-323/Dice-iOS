import UIKit

class ViewController: UIViewController {
   //ctrl drag under viewController to refrence a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   
    var leftDiceNumber = 1
    var rightDiceNumber = 5
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //who.what = Value
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
       // diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
        
    }
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        // Randomize the dice numbers
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)

        // Updating the image property of each UIImageView
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceNumber]
    }

    

}

