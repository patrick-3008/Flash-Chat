import UIKit
import Firebase

class RegisterVC: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    // Show alert dialog with the error
                    let alert = UIAlertController.init(title: "Registration Error", message: e.localizedDescription, preferredStyle: .alert)
                    let okAction = UIAlertAction.init(title: "Ok", style: .default)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    // Navigate to ChatVC
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        }
    }
    
}
