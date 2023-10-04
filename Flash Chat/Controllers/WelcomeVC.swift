import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // animation of titleLabel using CLTypingLabel pod
//        titleLabel.text = "⚡️FlashChat"
        
        // manual way of label animation
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "⚡️FlashChat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
}
