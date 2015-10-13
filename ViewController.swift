//
//  ViewController.swift
//  MemoriaCD
//
//  Created by Cristian Diaz on 11-10-15.
//  Copyright © 2015 AppArt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let opciones: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var seleccionado = 99
    var seleccionado2 : UIButton = UIButton()
    var cartas: [String] = []
    var aciertosTotales = 0
    var erroresTotales = 0
    var aciertosConsecutivos = 0
    var tipoDeJuego = 0
    var paresListos = 0
    var listadoBotones : [UIButton] = []
    
    @IBOutlet weak var etiquetaMensajes: UILabel!
    @IBOutlet weak var etiquetaContadorExitos: UILabel!
    
    @IBOutlet weak var botonNivel2: UIButton!
    @IBAction func botonNivel2(sender: AnyObject) {
        tipoDeJuego = 2
        alistaNivel2()
    }
    
    @IBAction func botonNivel3(sender: AnyObject) {
        tipoDeJuego = 3
        alistaNivel3()
    }
    
    @IBAction func botonNivel4(sender: AnyObject) {
        tipoDeJuego = 4
        alistaNivel4()
    }
    
    @IBAction func botonReiniciarJuego(sender: AnyObject) {
        etiquetaMensajes.text = "Presione Reiniciar para partir otra vez"
        etiquetaContadorExitos.text = "Presione las cartas en pares"
        
        if tipoDeJuego == 2 {
            alistaNivel2()
        } else if tipoDeJuego == 3 {
            alistaNivel3()
        } else if tipoDeJuego == 4 {
            alistaNivel4()
        }
    }
    
    // Carta 11 - 0
    @IBAction func carta11(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta11, orden: 0)
    }
    @IBOutlet weak var carta11: UIButton!
    
    // Carta 12 - 1
    @IBAction func carta12(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta12, orden: 1)
    }
    @IBOutlet weak var carta12: UIButton!
    
    // Carta 13 - 4
    @IBAction func carta13(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta13, orden: 4)
    }
    @IBOutlet weak var carta13: UIButton!
    
    // Carta 14 - 9
    @IBAction func carta14(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta14, orden: 9)
    }
    @IBOutlet weak var carta14: UIButton!
    
    // Carta 21 - 2
    @IBAction func carta21(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta21, orden: 2)
    }
    @IBOutlet weak var carta21: UIButton!
    
    // Carta 22 - 3
    @IBAction func carta22(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta22, orden: 3)
    }
    @IBOutlet weak var carta22: UIButton!
    
    // Carta 23 - 5
    @IBAction func carta23(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta23, orden: 5)
    }
    @IBOutlet weak var carta23: UIButton!
    
    // Carta 24 - 10
    @IBAction func carta24(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta24, orden: 10)
    }
    @IBOutlet weak var carta24: UIButton!
    
    // Carta 31 - 6
    @IBAction func carta31(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta31, orden: 6)
    }
    @IBOutlet weak var carta31: UIButton!
    
    // Carta 32 - 7
    @IBAction func carta32(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta32, orden: 7)
    }
    @IBOutlet weak var carta32: UIButton!
    
    // Carta 33 - 8
    @IBAction func carta33(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta33, orden: 8)
    }
    @IBOutlet weak var carta33: UIButton!
    
    // Carta 34 - 11
    @IBAction func carta34(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta34, orden: 11)
    }
    @IBOutlet weak var carta34: UIButton!
    
    // Carta 41 - 12
    @IBAction func carta41(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta41, orden: 12)
    }
    @IBOutlet weak var carta41: UIButton!
    
    // Carta 42 - 13
    @IBAction func carta42(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta42, orden: 13)
    }
    @IBOutlet weak var carta42: UIButton!
    
    // Carta 43 - 14
    @IBAction func carta43(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta43, orden: 14)
    }
    @IBOutlet weak var carta43: UIButton!
    
    // Carta 44 - 15
    @IBAction func carta44(sender: AnyObject) {
        self.ejecutaSeleccionCarta(carta44, orden: 15)
    }
    @IBOutlet weak var carta44: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Inicializar valores
        listadoBotones = [carta11, carta12, carta13, carta14, carta21, carta22, carta23, carta24, carta31, carta32, carta33, carta34, carta41, carta42, carta43, carta44]
        inicializaPantalla()
    }
    
    func inicializaPantalla (){
        etiquetaMensajes.text = "Seleccione tamaño de tablero"
        etiquetaContadorExitos.text = "Bienvenidos"
        for btn in self.listadoBotones {
            btn.enabled = false
        }
    }
    
    // Genera un caracter de forma aleatoria
    func caracterAleatorio() -> String {
        let aleatorioOpciones = arc4random_uniform(36)
        return self.opciones[Int(aleatorioOpciones)]
    }
    
    // Pone la carta boca abajo
    func darVueltaCarta2(botonCarta:UIButton) {
        botonCarta.backgroundColor = UIColor.blueColor()
        botonCarta.setTitle("CD", forState: UIControlState.Normal)
        botonCarta.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        botonCarta.enabled = true
    }
    
    // Desactiva una carta
    func desactivaCarta(botonCarta:UIButton) {
        botonCarta.backgroundColor = UIColor.whiteColor()
        botonCarta.enabled = false
    }
    
    // Compara cartas si hay dos seleccionadas
    func comparaCartas(ultimaCarta:Int, boton: UIButton) {
        if self.cartas[seleccionado] == cartas[ultimaCarta] {
            //Las cartas coinciden
            switch self.aciertosConsecutivos {
            case 1:
                self.aciertosConsecutivos++
                self.etiquetaMensajes.text = "Dos aciertos seguidos: 2 aciertos COMBO +2"
                self.aciertosTotales = aciertosTotales + 2
            case 2:
                self.aciertosConsecutivos++
                self.etiquetaMensajes.text = "Tres aciertos seguidos: 3 aciertos COMBO +3"
                self.aciertosTotales = aciertosTotales + 3
            case 3:
                self.aciertosConsecutivos++
                self.etiquetaMensajes.text = "Cuatro aciertos seguidos: 4 aciertos COMBO +4"
                self.aciertosTotales = aciertosTotales + 4
            case 4:
                self.aciertosConsecutivos++
                self.etiquetaMensajes.text = "Cinco aciertos seguidos: 5 aciertos COMBO +5"
                self.aciertosTotales = aciertosTotales + 5
            default:
                self.aciertosConsecutivos++
                self.aciertosTotales++
                self.etiquetaMensajes.text = "Presione Reiniciar para partir otra vez"
            }
            etiquetaContadorExitos.text = "Puntaje = " + String(aciertosTotales)
            self.seleccionado2.enabled = false
            self.seleccionado2.backgroundColor = UIColor.greenColor()
            self.seleccionado2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            boton.enabled = false
            boton.backgroundColor = UIColor.greenColor()
            boton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            self.paresListos++
            if self.tipoDeJuego == 2 {
                if self.paresListos == 2 {
                    generaMenajeFinal()
                }
            } else if self.tipoDeJuego == 3 {
                if self.paresListos == 4 {
                    generaMenajeFinal()
                }
            } else if self.tipoDeJuego == 4 {
                if self.paresListos == 8 {
                    generaMenajeFinal()
                }
            }
            self.seleccionado = 99
            self.view.userInteractionEnabled = true
        } else {
            //Las cartas no coinciden
            let parada = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 800000000)
            dispatch_after(parada, dispatch_get_main_queue()) {
                self.darVueltaCarta2(self.seleccionado2)
                self.darVueltaCarta2(boton)
                self.etiquetaMensajes.text = "Presione Reiniciar para partir otra vez"
                self.aciertosConsecutivos = 0
                self.erroresTotales++
                self.seleccionado = 99
                self.seleccionado2 = UIButton()
                self.view.userInteractionEnabled = true
            }
        }
    }

    // Imprime mensaje para indicar "final" o "final + Exito Perfecto"
    func generaMenajeFinal() {
        let parada = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 1500000000)
        dispatch_after(parada, dispatch_get_main_queue()) {
            if self.erroresTotales == 0 {
                self.etiquetaMensajes.text = "Juego terminado - Éxito Perfecto!!!"
            } else {
                self.etiquetaMensajes.text = "Juego terminado"
            }
        }
    }
    
    
    // Ejecuta todo lo relacionado luego de la selección del botón
    func ejecutaSeleccionCarta(botonSeleccionado :UIButton, orden: Int) {
        botonSeleccionado.setTitle(self.cartas[orden], forState: UIControlState.Normal)
        botonSeleccionado.backgroundColor = UIColor.redColor()
        if self.seleccionado == 99 {
            //No hay seleccionado antes
            self.seleccionado = orden
            self.seleccionado2 = botonSeleccionado
            print(self.seleccionado)
        } else {
            //Hay un seleccionado antes
            if self.seleccionado != orden {
                self.view.userInteractionEnabled = false
                comparaCartas(orden, boton: botonSeleccionado)
            }
        }
    }
    
    // Alista todos los parámetros para jugar nivel 2
    func alistaNivel2() {
        etiquetaMensajes.text = "Presione Reiniciar para partir otra vez"
        etiquetaContadorExitos.text = "Presione las cartas en pares"
        self.desactivaCarta(carta13)
        self.desactivaCarta(carta14)
        self.desactivaCarta(carta23)
        self.desactivaCarta(carta24)
        self.desactivaCarta(carta31)
        self.desactivaCarta(carta32)
        self.desactivaCarta(carta33)
        self.desactivaCarta(carta34)
        self.desactivaCarta(carta41)
        self.desactivaCarta(carta42)
        self.desactivaCarta(carta43)
        self.desactivaCarta(carta44)
        self.darVueltaCarta2(carta11)
        self.darVueltaCarta2(carta12)
        self.darVueltaCarta2(carta21)
        self.darVueltaCarta2(carta22)
        
        //Crear listado de cartas
        self.generaCartas(4)
        
        //Inicilizar contadores
        erroresTotales = 0
        aciertosTotales = 0
        aciertosConsecutivos = 0
        paresListos = 0
        seleccionado = 99
        seleccionado2 = UIButton()
    }
    
    // Alista todos los parámetros para jugar nivel 3
    func alistaNivel3() {
        etiquetaMensajes.text = "Presione Reiniciar para partir otra vez"
        etiquetaContadorExitos.text = "Presione las cartas en pares"
        self.desactivaCarta(carta14)
        self.desactivaCarta(carta24)
        self.desactivaCarta(carta33) //eliminado para poder hacer pares
        self.desactivaCarta(carta34)
        self.desactivaCarta(carta41)
        self.desactivaCarta(carta42)
        self.desactivaCarta(carta43)
        self.desactivaCarta(carta44)
        self.darVueltaCarta2(carta11)
        self.darVueltaCarta2(carta12)
        self.darVueltaCarta2(carta21)
        self.darVueltaCarta2(carta22)
        self.darVueltaCarta2(carta13)
        self.darVueltaCarta2(carta23)
        self.darVueltaCarta2(carta31)
        self.darVueltaCarta2(carta32)
        //self.darVueltaCarta2(carta33) //eliminado para poder hacer pares
        
        //Crear listado de cartas
        self.generaCartas(9)
        
        //Inicilizar contadores
        erroresTotales = 0
        aciertosTotales = 0
        aciertosConsecutivos = 0
        paresListos = 0
        seleccionado = 99
        seleccionado2 = UIButton()
    }
    
    // Alista todos los parámetros para jugar nivel 4
    func alistaNivel4() {
        etiquetaMensajes.text = "Presione Reiniciar para partir otra vez"
        etiquetaContadorExitos.text = "Presione las cartas en pares"
        self.darVueltaCarta2(carta11)
        self.darVueltaCarta2(carta12)
        self.darVueltaCarta2(carta21)
        self.darVueltaCarta2(carta22)
        self.darVueltaCarta2(carta13)
        self.darVueltaCarta2(carta23)
        self.darVueltaCarta2(carta31)
        self.darVueltaCarta2(carta32)
        self.darVueltaCarta2(carta33)
        self.darVueltaCarta2(carta14)
        self.darVueltaCarta2(carta24)
        self.darVueltaCarta2(carta34)
        self.darVueltaCarta2(carta41)
        self.darVueltaCarta2(carta42)
        self.darVueltaCarta2(carta43)
        self.darVueltaCarta2(carta44)
        
        //Crear listado de cartas
        self.generaCartas(16)
        
        //Inicilizar contadores
        erroresTotales = 0
        aciertosTotales = 0
        aciertosConsecutivos = 0
        paresListos = 0
        seleccionado = 99
        seleccionado2 = UIButton()
    }
    
    // Crea el arreglo con las cartas
    func generaCartas(cantidad: Int){
        //Borro lo que tenga
        self.cartas.removeAll()
    
        if cantidad == 4 {
            var temporal = ["xx","xx","xx","xx"]
            for var carta = 0; carta < 4; carta++ {
                if temporal[carta]=="xx" {
                    var caracterListo = false
                    var caracter = ""
                    while caracterListo == false {
                        caracter = self.caracterAleatorio()
                        var revisionOK = false
                        for var i=1; i<temporal.count; i++ {
                            if temporal[i] == caracter {
                                revisionOK = true
                            }
                        }
                        if revisionOK == false {
                            caracterListo = true
                        }
                    }
                    temporal[carta] = caracter
                    let delta = UInt32(4 - carta)
                    var aleatorioCartas = arc4random_uniform(delta)
                    
                    if temporal[Int(aleatorioCartas)] == "xx" {
                        temporal[Int(aleatorioCartas)] = caracter
                    } else {
                        aleatorioCartas = UInt32(carta + 1)
                        while (temporal[Int(aleatorioCartas)] != "xx") && (Int(aleatorioCartas) < temporal.count) {
                            aleatorioCartas++
                        }
                        temporal[Int(aleatorioCartas)] = caracter
                    }
                }
            }
            print(temporal)
            self.cartas = temporal
        } else if cantidad == 9 {
            var temporal = ["xx","xx","xx","xx","xx","xx","xx","xx"]
            for var carta = 0; carta < 8; carta++ {
                if temporal[carta]=="xx" {
                    var caracterListo = false
                    var caracter = ""
                    while caracterListo == false {
                        caracter = self.caracterAleatorio()
                        var revisionOK = false
                        for var i=1; i<temporal.count; i++ {
                            if temporal[i] == caracter {
                                revisionOK = true
                            }
                        }
                        if revisionOK == false {
                            caracterListo = true
                        }
                    }
                    temporal[carta] = caracter
                    let delta = UInt32(8 - carta)
                    var aleatorioCartas = arc4random_uniform(delta)
                    
                    if temporal[Int(aleatorioCartas)] == "xx" {
                        temporal[Int(aleatorioCartas)] = caracter
                    } else {
                        aleatorioCartas = UInt32(carta + 1)
                        while (temporal[Int(aleatorioCartas)] != "xx") && (Int(aleatorioCartas) < temporal.count) {
                            aleatorioCartas++
                        }
                        temporal[Int(aleatorioCartas)] = caracter
                    }
                }
            }
            print(temporal)
            self.cartas = temporal
        } else if cantidad == 16 {
            var temporal = ["xx","xx","xx","xx","xx","xx","xx","xx","xx","xx","xx","xx","xx","xx","xx","xx"]
            for var carta = 0; carta < 16; carta++ {
                if temporal[carta]=="xx" {
                    var caracterListo = false
                    var caracter = ""
                    while caracterListo == false {
                        caracter = self.caracterAleatorio()
                        var revisionOK = false
                        for var i=1; i<temporal.count; i++ {
                            if temporal[i] == caracter {
                                revisionOK = true
                            }
                        }
                        if revisionOK == false {
                            caracterListo = true
                        }
                    }
                    temporal[carta] = caracter
                    let delta = UInt32(16 - carta)
                    var aleatorioCartas = arc4random_uniform(delta)
                    
                    if temporal[Int(aleatorioCartas)] == "xx" {
                        temporal[Int(aleatorioCartas)] = caracter
                    } else {
                        aleatorioCartas = UInt32(carta + 1)
                        while (temporal[Int(aleatorioCartas)] != "xx") && (Int(aleatorioCartas) < temporal.count) {
                            aleatorioCartas++
                        }
                        temporal[Int(aleatorioCartas)] = caracter
                    }
                }
            }
            print(temporal)
            self.cartas = temporal
        }
    }
}