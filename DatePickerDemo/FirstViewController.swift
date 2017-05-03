import UIKit

class FirstViewController: UIViewController {
    
     let datePicker = UIDatePicker()

    @IBOutlet weak var datePickerTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // Cretae a date Picker Methods
    
    func createDatePicker()  {
        // set date formatter
        
        datePicker.datePickerMode = .date
        
        // toolbar
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // bar button items
        
        let barButton = UIBarButtonItem(barButtonSystemItem:.done, target: nil, action: #selector(donePressed))
        toolBar.setItems([barButton], animated: true)
        
        
        datePickerTxt.inputAccessoryView = toolBar
        
        //assigning date picker to textfield
        
        datePickerTxt.inputView = datePicker
       
    }
    func donePressed() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        datePickerTxt.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    
    
   
  }

