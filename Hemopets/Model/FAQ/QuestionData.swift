//
//  QuestionData.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import Foundation


// Categories and questions
let categories: [Category] = [category1, category2, category3, category4]


// Categories
let category1 = Category(id: 0, categoryName: "Procedimentos", categoryIconName: "cross.case.fill", questions: [question3, question4, question5, question6, question14])
let category2 = Category(id: 1, categoryName: "Pré-requisitos", categoryIconName: "heart.text.square.fill", questions: [question1, question2, question10, question13])
let category3 = Category(id: 2, categoryName: "Locais de Doação", categoryIconName: "paperplane.circle.fill", questions: [question12])
let category4 = Category(id: 3, categoryName: "Gerais", categoryIconName: "exclamationmark.circle.fill", questions: [question7, question8, question9, question11])




// Questions inside the F.A.Q list
let question1 = Question(id: 0, question: "Quais os requisitos mínimos para meu cão ser um doador?",
                         answer: "- Idealmente com no mínimo de 25Kg \n- Entre 1 e 8 anos\n- Estar saudável. Sem histórico de doenças graves ou ter doenças infecciosas.\n- Sem histórico de transfusão recente, supro ou convulsões \n- Vacinas e vermifugações atualizadas \n-Sem medicação contínua (diária) \n- Comportamento dócil e que permita manipulação \n- Fêmeas em anestro, não gestantes e não lactantes.")

let question2 = Question(id: 1, question: "Quais os requisitos mínimos para meu gato ser um doador?",
                         answer: "- Pelo menos 5Kg \n- Entre 2 e 8 anos\n- Estar saudável. Sem histórico de doenças graves ou ter doenças infecciosas.\n- Sem histórico de transfusão recente, supro ou convulsões \n- Vacinas e vermifugações atualizadas \n-Sem medicação contínua (diária) \n- Comportamento dócil e que permita manipulação \n- Preferencialmente sem acesso a rua \n- Fêmeas em anestro, não gestantes e não lactantes.")

let question3 = Question(id: 3, question: "Qual é o procedimento realizado para meu cão doar sangue?", answer: "Uma vez que o tutor tem interesse em realizar a doação, antes de qualquer procedimento é realizado exames físicos, hematólogicos e bioquímicos do animal gratuitamente para verificar se o seu cão está em boas condicões de saúde. Nos cães, são realizados hemograma completo, teste de função renal, detecção de Leshmaniose e Dirofilariose (vermes do coração), Erlichia Canis, Borrelia e Anaplasma (doenças transmitidas pelo carrapato).")

let question4 = Question(id: 4, question: "Qual é o procedimento realizado para meu gato doar sangue?", answer: "Uma vez que o tutor tem interesse em realizar a doação, antes de qualquer procedimento é realizado exames físicos, hematólogicos e bioquímicos do animal gratuitamente para verificar se o seu felino está em boas condicões de saúde. Aos gatos doadores, são oferecidos hemograma completo, teste de função renal, sorologia para FIV (imunodeficiência viral felina) e FELV (Leucemia viral felina).")

let question5 = Question(id: 5, question: "O procedimento dura quanto tempo?", answer: "O tempo de doação é normalmente rápido, durando em média 15 minutos.")

let question6 = Question(id: 6, question: "Há algum risco no procedimento de doação?", answer: "Os riscos mais comuns associados a doação são estresse, hipotensão, anemia, flebite, ou algum problema decorrente de possível sedação. No entanto, é importante salientar que é feito uma série de exames no pet para garantir que a saúde do cão ou gato está apto para ser um doador.")

let question7 = Question(id: 7, question: "É possível ser um doador regular?", answer: "Sim! Seu pet pode doar sangue novamente sem problema nenhum. Entretanto, é necesssario respeitar o intervalo de pelo menos 3 a 4 meses para uma próxima doação. Este é o tempo para garantir que seu pet está apto e totalmente recuperado para realizar uma nova doação.")

let question8 = Question(id: 8, question: "Gato pode doar sangue e destinar para um futuro cãozinho? Ou vice versa?", answer: "Não. Isto é um ponto bastante importante que deve ser destacado. Cães e gatos possuem diferentes tipos sanguineos que variam entre as raças. Por isso, antes da transfusão é realizado um teste de compatibilidade para saber se o sangue doador é compatível com quem irá receber. Para o lado canino temos DEA 1.1, DEA 1.2, DEA 1.3, DEA 3, DEA 4, DEA 5, DEA 7. E para o lado felino temos Tipo A, Tipo B e Tipo AB. A doação de sangue de um cachorro pode ajudar dependendo até quatro cães, e de gatos, dois.")

let question9 = Question(id: 9, question: "É necessário o pet estar em jejum para doar?", answer: "Normalmente o pet deve estar em jejum entre 8 - 12 horas antes da doação. Porém podem haver discrepâncias desta informação dependendo do seu local de doação, por isto, o ideal é confirmar esta informação entrando em contato com o local que você pretende doar. Quando a retirada do sangue terminar, normalmente o próprio banco de sangue oferece petiscos, comidas e ração para que o bichinho não fique fraco.")

let question10 = Question(id: 10, question: "Preciso levar algo além do meu pet para doar?", answer: "Somente a carteirinha de vacinação do pet. Em caso de necessidade, podem ser solicitados o histórico médico caso seu pet tenha obtido doenças ou algum problema de saúde anteriormente.")

let question11 = Question(id: 11, question: "Quanto de sangue é extraído do meu pet?", answer: "Em média, os cães podem doar até 450ml de sangue, enquanto os gatos 40ml.")

let question12 = Question(id: 12, question: "Em que locais posso doar?", answer: "O aplicativo no momento cobre apenas a cidade de Porto Alegre e São Paulo. Os locais que você pode doar nas respectivas cidades são os seguintes: \n \(listHemocenters())")

let question13 = Question(id: 13, question: "Quais vacinas devo ter realizado nos pets?", answer: "Nos gatos, é necessário que tenham realizados pelo menos as vacinas V5 + Antirrábica. Enquanto nos cães, pelo menos a V10 + Antirrábica.")

let question14 = Question(id: 14, question: "Existe algum efeito colateral da doação de sangue?", answer: "Segundo veterinários, no geral não se vê efeitos colaterais no procedimento de doação. Podem haver casos de hipotensão e hipovolemia, porém são considerados relativamente raros de acontecer.")




// Hemocenters data
let hem1 = Hemocenter(name: "Blut's Centro de Diagnósticos Veterinários", telephoneNumbers: ["(51) 3072-0427", "(51) 99565-5765 - Whatsapp"], address: "R. Dr. Florêncio Ygartua, 429 - Moinhos de Vento, Porto Alegre - RS, 90430-010", coordinate: .init(latitude: -30.0304523, longitude:  -51.2030922), openingHours: ["Segunda a Sexta: 09:00 às 18:30", "Sábado: 9:00 às 17:30"], websites: ["http://bluts.com.br/", "https://www.facebook.com/blutscentro/"])

let hem2 = Hemocenter(name: "Banco de Sangue Veterinário LACVet UFRGS", telephoneNumbers: ["(51) 3308-8033"], address: "Av. Bento Gonçalves, 9090 - Agronomia, Porto Alegre, RS, 91540-000", coordinate: .init(latitude: -30.0765336, longitude:  -51.1275977), openingHours: ["Segunda a Sexta: 08:00 às 18:00"], websites: ["www.ufrgs.br/lacvet", "https://www.facebook.com/bancodesanguelacvet/"])

let hem3 = Hemocenter(name: "Hemovet", telephoneNumbers: ["(11) 2918-8050", "(11) 93363-8325 - Whatsapp"], address: "R. Pinheiro Guimarães, 86 - Parque da Vila Prudente, São Paulo - SP, 03141-030", coordinate: .init(latitude: -23.5841388, longitude:  -46.5744639), openingHours: ["Segunda a Sexta: 08:00 às 18:00", "Sábados: 09:00 as 17:00"], websites: ["https://hemovet.com.br", "https://pt-br.facebook.com/HemovetBR/"])

let hem4 = Hemocenter(name: "Pets & Life", telephoneNumbers: ["(11) 3476-9461", "(11) 94333-4082 - Whatsapp"], address: "Av. Leão Machado, 100 - Jaguaré, São Paulo - SP, 05328-020", coordinate: .init(latitude: -23.547625, longitude:  -46.7570126), openingHours: ["Segunda a Sexta: 08:00 às 21:00", "Sábados: 08:00 as 17:00", "Domingos e feriados: 10:00 às 16:00"], websites: ["https://petsandlife.com.br", "https://www.facebook.com/petsandlifesp/"])

let hem5 = Hemocenter(name: "BSVET", telephoneNumbers: ["(11) 3624-3958", "(11) 99824-3995 - Whatsapp"], address: "Rua Desembargador do Vale, 196 - Pompeia, São Paulo - SP, 05010-040", coordinate: .init(latitude: -23.5327084, longitude:  -46.6831914), openingHours: ["Se informar com o local"], websites: ["https://www.bsvet.com.br"])

let hem6 = Hemocenter(name: "Transfucão", telephoneNumbers: ["(11) 3624-3958", "(11) 94595-6141 - Whatsapp"], address: "R. Mariquinha Viana, 865 - Mandaqui, São Paulo - SP, 02408-131", coordinate: .init(latitude: -23.4822336, longitude:  -46.6290257), openingHours: ["Segunda a Sexta: 08:00 às 20:00", "Sábados: 09:00 as 20:00", "Domingos e feriados: 10:00 às 16:00"], websites: ["https://www.transfucao.com.br", "https://www.facebook.com/transfucao/", "https://www.instagram.com/transfucao/?hl=en"])

let petHemocenters = [hem1, hem2, hem3, hem4, hem5, hem6]


func listHemocenters() -> String {
    var name: String
    var phone: String
    var address: String
    var openingHour: String
    
    var hemocenterData: String = ""
    
    for data in petHemocenters {
        name = "\n" + data.name + "\n"
        address = "Endereço: " + data.address + "\n"
        openingHour = data.openingHours[0] + "\n"
        phone = "Contato: " + data.telephoneNumbers[0] + "\n"

        
        hemocenterData.append(name+address+openingHour+phone)
    }
    
    return hemocenterData
}

