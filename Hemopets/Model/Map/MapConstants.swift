//
//  Constants.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import Foundation
import MapKit

struct MapConstants {
    static let defaultRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -30.045382, longitude: -51.191168), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    static let pins = [
        PinAnnotation(info: Hemocenter(name: "Blut's Centro de Diagnósticos Veterinários", telephoneNumbers: ["(51) 3072-0427", "(51) 99565-5765 - Whatsapp"], address: "R. Dr. Florêncio Ygartua, 429 - Moinhos de Vento, Porto Alegre - RS, 90430-010", coordinate: .init(latitude: -30.0304523, longitude:  -51.2030922), openingHours: ["Segunda a Sexta: 09:00 às 18:30", "Sábado: 9:00 às 17:30"], websites: ["http://bluts.com.br/", "https://www.facebook.com/blutscentro/"])),
        
        PinAnnotation(info: Hemocenter(name: "Banco de Sangue Veterinário LACVet UFRGS", telephoneNumbers: ["(51) 3308-8033"], address: "Av. Bento Gonçalves, 9090 - Agronomia, Porto Alegre, RS, 91540-000", coordinate: .init(latitude: -30.0765336, longitude:  -51.1275977), openingHours: ["Segunda a Sexta: 08:00 às 18:00"], websites: ["https://www.ufrgs.br/lacvet", "https://www.facebook.com/bancodesanguelacvet/"])),
        
        PinAnnotation(info: Hemocenter(name: "Hemovet", telephoneNumbers: ["(11) 2918-8050", "(11) 93363-8325 - Whatsapp"], address: "R. Pinheiro Guimarães, 86 - Parque da Vila Prudente, São Paulo - SP, 03141-030", coordinate: .init(latitude: -23.5841388, longitude:  -46.5744639), openingHours: ["Segunda a Sexta: 08:00 às 18:00", "Sábados: 09:00 as 17:00"], websites: ["https://hemovet.com.br", "https://pt-br.facebook.com/HemovetBR/"])),
        
        PinAnnotation(info: Hemocenter(name: "Pets & Life", telephoneNumbers: ["(11) 3476-9461", "(11) 94333-4082 - Whatsapp"], address: "Av. Leão Machado, 100 - Jaguaré, São Paulo - SP, 05328-020", coordinate: .init(latitude: -23.547625, longitude:  -46.7570126), openingHours: ["Segunda a Sexta: 08:00 às 21:00", "Sábados: 08:00 as 17:00", "Domingos e feriados: 10:00 às 16:00"], websites: ["https://petsandlife.com.br", "https://www.facebook.com/petsandlifesp/"])),
        
        PinAnnotation(info: Hemocenter(name: "BSVET", telephoneNumbers: ["(11) 3624-3958", "(11) 99824-3995 - Whatsapp"], address: "Rua Desembargador do Vale, 196 - Pompeia, São Paulo - SP, 05010-040", coordinate: .init(latitude: -23.5327084, longitude:  -46.6831914), openingHours: ["Se informar com o local"], websites: ["https://www.bsvet.com.br"])),
        
        PinAnnotation(info: Hemocenter(name: "Transfucão", telephoneNumbers: ["(11) 3624-3958", "(11) 94595-6141 - Whatsapp"], address: "R. Mariquinha Viana, 865 - Mandaqui, São Paulo - SP, 02408-131", coordinate: .init(latitude: -23.4822336, longitude:  -46.6290257), openingHours: ["Segunda a Sexta: 08:00 às 20:00", "Sábados: 09:00 as 20:00", "Domingos e feriados: 10:00 às 16:00"], websites: ["https://www.transfucao.com.br", "https://www.facebook.com/transfucao/", "https://www.instagram.com/transfucao/?hl=en"]))
        ]
}
