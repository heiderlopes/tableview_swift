//
//  ViewController.swift
//  tableview_swift
//
//  Created by Usuário Convidado on 01/07/17.
//  Copyright © 2017 Heider Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var meuTableView: UITableView!

    var personagens_nomes = [
        "Homem Formiga",
        "Capitao América",
        "Capitão Bucky",
        "Ciclops",
        "Coisa",
        "Coisa de Terno",
        "Deadpool",
        "Demolidor Clássico",
        "Demolidor",
        "Doutor Estranho",
        "Emma Frost",
        "Falcão",
        "Gambit",
        "Garota Aranha",
        "Homem Aranha Escalarte",
        "Homem Aranha Millenium",
        "Homem Aranha Preto",
        "Homem Aranha",
        "Homem de Ferro Invisivel",
        "Homem de Ferro",
        "Hulk",
        "Jean Grey",
        "Miss Marvel",
        "Mulher Aranha",
        "Nick Fury",
        "Nova",
        "Reptil",
        "Surfista Negro",
        "Surfista Prateado",
        "Thor",
        "Vampira",
        "Vespa",
        "Viúva Negra",
        "Wolverine"
    ]
    
    var personagens_images = [
        "antman",
        "capitao_america",
        "capitao_bucky",
        "ciclope",
        "coisa",
        "coista_terno",
        "deadpool",
        "demolidor_classico",
        "demolidor",
        "doutor_estranho",
        "emma_frost",
        "falcao",
        "gambit",
        "garota_aranha",
        "homem_aranha_escalarte",
        "homem_aranha_millenium",
        "homem_aranha_preto",
        "homem_aranha",
        "homem_ferro_invisivel",
        "homem_ferro",
        "hulk",
        "jean_grey",
        "miss_marvel",
        "mulher_aranha",
        "nick_fury",
        "nova",
        "reptil",
        "surfista_negro",
        "surfista_prateado",
        "thor",
        "vampira",
        "vespa",
        "viuva_negra",
        "wolverine"
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personagens_nomes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            
            let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
            celula?.textLabel?.text = " \(personagens_nomes[indexPath.row])"
            celula?.imageView?.image = UIImage(named: "\(personagens_images[indexPath.row])")
            
            return celula!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alerta = UIAlertController(
            title: "Aviso",
            message: "Você selecionou o personagem \(personagens_nomes[indexPath.row])",
            preferredStyle: UIAlertControllerStyle.alert)
        
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuTableView.delegate = self
        meuTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

