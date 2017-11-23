//
//  SettingInfoViewController.swift
//  SmartHealth
//
//  Created by laoniu on 2017/09/16.
//  Copyright © 2017年 laoniu. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage
class SettingInfoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate ,UIGestureRecognizerDelegate {

    @IBOutlet weak var iconImageView: UIImageView!
    public var personModel:SHPersonListModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        let iconRecognize = UITapGestureRecognizer.init(target: self, action: #selector(SettingInfoViewController.iconEventClick))
        iconImageView.addGestureRecognizer(iconRecognize)
        self.loadImageData()
    }
    
    func iconEventClick() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        } else {
            print("PhotoLibrary can't be used.")
        }
    }
    
    func loadImageData(){
        let link = Constants.Photo_Base_Link + (personModel?.portraitPath)! + "?time=" + String(Date().ticks)
        iconImageView.sd_setImage(with: URL(string:link), placeholderImage: UIImage(named: "person_default_icon"))
    }
    
    func uploadImageData(){
        self.view.isUserInteractionEnabled = false
        let pk = UserDefaults.standard.string(forKey:Constants.Login_User_PK) ?? ""
        let imageData = UIImageJPEGRepresentation(iconImageView.image!.ResizeUIImage(width: 80, height: 80), 0.5)
        let strBase64 = imageData?.base64EncodedData(options: .lineLength64Characters)
        let link = Constants.PersonUpload+"?"+Constants.Login_User_PK+"="+pk

        let request = Alamofire.upload(strBase64!, to: link, method: .post, headers: ApiHelper.getDefaultHeader())
        request.responseJSON { response in
            self.view.isUserInteractionEnabled = true
            switch response.result {
            case .success(let data):
                Utils.printMsg(msg:"JSON: \(data)")
                let dic = data as! NSDictionary
                let model = SHPersonPortraitModel(JSON: dic as! [String : Any])
                guard let themodel = model else {
                    self.view.makeToast("保存失败")
                    return
                }
                if (themodel.success) {
                    self.view.makeToast("保存成功")
                } else {
                    self.view.makeToast("保存失败")
                }
            case .failure:
                self.view.makeToast("保存失败")
            }
        }
    }
    
    // MARK: - UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            iconImageView.image = image
            uploadImageData()
        }
        picker.dismiss(animated: true, completion: nil);
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
