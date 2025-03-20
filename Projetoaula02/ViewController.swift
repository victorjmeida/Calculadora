import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lbNumber1: UITextField!
    @IBOutlet weak var lbNumber2: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    @IBAction func Somar(_ sender: Any) {
        calcular(operação: "+")
    }
    
    @IBAction func Subtrair(_ sender: Any) {
        calcular(operação: "-")
    }
    
    @IBAction func Multiplicar(_ sender: Any) {
        calcular(operação: "*")
    }
    
    @IBAction func Dividir(_ sender: Any) {
        calcular(operação: "/")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func calcular(operação: String){
        guard let texto1 = lbNumber1.text, let numero1 = Double(texto1),
              let texto2 = lbNumber2.text, let numero2 = Double(texto2) else{
            lbResult.text = "Valores inválidos!"
            return
        }
        
        var resultado: Double = 0
        
        switch operação {
        case "+":
            resultado = numero1 + numero2
        case "-":
            resultado = numero1 - numero2
        case "*":
            resultado = numero1 * numero2
        case "/":
            resultado = numero1 / numero2
        case "÷":
                    if numero2 == 0 {
                        lbResult.text = "Erro: Divisão por zero!"
                        return
                    }
                    resultado = numero1 / numero2
                default:
                    break
        }
        
        lbResult.text = "Resultado: \(resultado)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}

