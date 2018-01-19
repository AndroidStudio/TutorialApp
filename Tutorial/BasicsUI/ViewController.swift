import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //mealNameTextField.delegate = TextFieldDelegate()
        mealNameTextField.delegate = self
    }

    @IBAction func setDefaultNameClick(_ sender: UIButton) {
        mealNameLabel.text = "Meal Name"
    }
    
    @IBAction func selectImageFromGallery(_ sender: UITapGestureRecognizer) {
        mealNameTextField.resignFirstResponder()

        let imagePickGalleryController = UIImagePickerController()
        imagePickGalleryController.sourceType = .photoLibrary
        imagePickGalleryController.delegate = self
        imagePickGalleryController.allowsEditing = true
        present(imagePickGalleryController, animated: true, completion: nil)
        
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else { fatalError("error \(info)") }

        mealImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        //switch
        self.mealNameLabel.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}


