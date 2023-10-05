import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
                if let e = error {
                    // Show alert dialog with the error
                    print(e)
                    let alert = UIAlertController.init(title: "Login Error", message: e.localizedDescription, preferredStyle: .alert)
                    let okAction = UIAlertAction.init(title: "Ok", style: .default)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    // Navigate to ChatVC
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
    
}
