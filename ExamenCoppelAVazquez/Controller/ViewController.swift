//
//  ViewController.swift
//  ExamenCoppelAVazquez
//
//  Created by Digis01 Soluciones Digitales on 12/11/22.
//
import UIKit

class ViewController: UIViewController {
    
    private var requestTokenViewModel = RequestTokenViewModel()
    
    private var requestToken : RequestToken?  // TODO PROYECTO - NECESITA SER GUARDADO EN UN KEYCHAIN USERDEFAULT (SAVE OBJECT COMPLEX)
    
    
    @IBOutlet weak var Usuario: UITextField!

    @IBOutlet weak var Contraseña: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        GenerarToken()
        
    }
    
    @IBAction func Ingresar(_ sender: UIButton) {
        //Validar Token //Si isValid //Recuperar los datos // Hacer Post(Login) // SEGUES A MOVIES
        //No isValid LLAMAR FUNCION GenerarToken()
       
        }
        
        
        
    
    
    func GenerarToken(){
        requestTokenViewModel.GetRequestToken { object, error in
            guard let _ = object else {
                print("Error")
                return
            }
            self.requestToken = object
        }
    }
}
