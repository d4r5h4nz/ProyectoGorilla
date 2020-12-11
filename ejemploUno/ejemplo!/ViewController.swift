//
//  ViewController.swift
//  ejemplo!
//
//  Created by Darshan Zamora on 8/3/18.
//  Copyright © 2018 Darshan Zamora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numbersTex: UITextField!
    @IBOutlet weak var intentosLbl: UILabel!
    @IBAction func validateBtn(_ sender: Any) {
        if numbersTex.text == random {
            mensajelbl.text = "Felicidades Ganaste";
            self.view.backgroundColor = #colorLiteral(red: 0.9456755249, green: 1, blue: 0.1130076824, alpha: 1)
        } else {
          mensajelbl.text = "fallaste intenta nuevamente"
            self.view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            
        }
    }
    var random = "";
    var intentos = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValues();
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var mensajelbl: UILabel!
    
   
    func setValues(){
        random = String(arc4random_uniform(10));
        intentos = 5;
        intentosLbl.text = String(intentos);
        numbersTex.text = "";
        mensajelbl.text = "ingresa un numero del 0 al 9";
        self.view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    }


}

