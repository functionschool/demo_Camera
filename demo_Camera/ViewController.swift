//
//  ViewController.swift
//  demo_Camera
//
//  Created by Kazuyuki Nakatsu on 5/31/18.
//  Copyright © 2018 Kazuyuki Nakatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        //背景色をセット
        self.view.backgroundColor = UIColor.white
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "flydata_logo_600_square.png"))
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true, completion: nil)
        
        // 2秒間背景を表示
        sleep(3)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print(#function)
        // print(info[UIImagePickerControllerMediaType]!)
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        // 撮影した画像をカメラロールに保存
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print(#function)
    }

}

