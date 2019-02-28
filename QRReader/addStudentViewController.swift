

import UIKit
import FirebaseDatabase
import FirebaseFirestore

class addStudentViewController: UIViewController {
    
    @IBOutlet weak var stuID: UITextField!
    @IBOutlet weak var stuName: UITextField!
    @IBOutlet weak var stuAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addStudent(_ sender: Any) {
              if stuID.text == "" && stuName.text == "" && stuAge.text == "" {
        
                 let alertController = UIAlertController(title: "Embty", message: "Please write all faild text!", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
               alertController.addAction(defaultAction)
              self.present(alertController, animated: true, completion: nil)
           }
           else {
        
           // let ref = Database.database().reference().child("student").childByAutoId()
          //  ref.setValue(["ID": stuID.text!, "Name": stuName.text!, "Age": stuAge.text!])
              //  let uid = Auth.auth().currentUser!.uid
                // هنا لما نسوي انتقريشن لازم الديكومنت يكون الانالومس اي دي حق اللرينر    
                let db = Firestore.firestore()
                db.collection("info").addDocument(data:["ID": stuID.text!, "Name": stuName.text!, "Age": stuAge.text!])
                
                
        
         }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
