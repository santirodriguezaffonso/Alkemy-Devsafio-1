import Foundation

typealias Address = (ciudad: String, partido: String, provincia: String, calle: [String:Any], pais: String, codigoPostal: Int, piso: Int?, departamento: String?)

let address1: Address = (
   ciudad: "Tandil",
   partido: "Tandil",
   provincia: "Buenos Aires",
   calle: ["nombreDeCalle": "Arana",
           "numero": 367,
           "entreCalle1": "Paz",
           "entreCalle2": "Av. Colon"
   ],
   pais: "Argentina",
   codigoPostal: 1500,
   piso: 1,
   departamento: "A"
)

let address2: Address = (
   ciudad: "Azul",
   partido: "Azul",
   provincia: "Buenos Aires",
   calle: ["nombreDeCalle": "San Martin",
           "numero": 565,
           "entreCalle1": "Moreno",
           "entreCalle2": "Av. 25 de Mayo"
   ],
   pais: "Argentina",
   codigoPostal: 1700,
   piso: nil,
   departamento: nil
)

let address3: Address = (
   ciudad: "Ciudad Autonoma de Buenos Aires",
   partido: "Comuna 3",
   provincia: "CABA",
   calle: ["nombreDeCalle": "Libertad",
           "numero": 1530,
           "entreCalle1": "Talcahuano",
           "entreCalle2": "Uruguay"
   ],
   pais: "Argentina",
   codigoPostal: 1300,
   piso: 10,
   departamento: "A"
)

func city (from: Address) -> String {
    let cities = "\(from.ciudad)"
   return cities
}

func states(from: Address) -> String {
    if from.provincia == "Buenos Aires" {
        return "Make \(from.provincia) great again!"
    } else {
        return "\(from.provincia) wins"
    }
}

print(states(from: address2))

func pisoDepto(en un: Address) -> String {
    if let piso = un.piso, let depto = un.departamento {
        return "En esta dirección el Piso es \(piso) y el Departamento '\(depto)'."
    } else {
        return "La dirección actual en \(un.ciudad) no es un Edificio o PH."
    }
}

print(pisoDepto(en: address1))
