import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func pushConstaintsBasics(_ sender: UIButton) {
        self.navigationController?.pushViewController(ConstraintsBasicsController.controller, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        self.mealNameLabel.text = textField.text
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}

extension ViewController: UIImagePickerControllerDelegate {

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        if let selectedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            mealImageView.image = selectedImage
            dismiss(animated: true, completion: nil)
        }
    }
}




