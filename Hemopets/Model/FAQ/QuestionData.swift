//
//  QuestionData.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import Foundation


// Categories and questions
let categories: [Category] = [category1, category2, category3, category4]
let frequentlyAskedQuestions: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11]



// Categories
let category1 = Category(id: 0, categoryName: "Procedimentos", questions: [question3, question4, question5, question6])
let category2 = Category(id: 1, categoryName: "Pré-requisitos", questions: [question1, question2, question10])
let category3 = Category(id: 2, categoryName: "Locais de Doação", questions: [question12])
let category4 = Category(id: 3, categoryName: "Gerais", questions: [question7, question8, question9])




// Questions inside the F.A.Q list
let question1 = Question(id: 0, question: "Quais os requisitos mínimos para meu cão ser um doador?",
                         answer: "- Idealmente com no mínimo de 25Kg \n- Entre 1 e 8 anos\n- Estar saudável. Sem histórico de doenças graves ou ter doenças infecciosas.\n- Sem histórico de transfusão recente, supro ou convulsões \n- Vacinas e vermifugações atualizadas \n-Sem medicação contínua (diária) \n- Comportamento dócil e que permita manipulação \n- Fêmeas em anestro, não gestantes e não lactantes.")

let question2 = Question(id: 1, question: "Quais os requisitos mínimos para meu gato ser um doador?",
                         answer: "- Pelo menos 4Kg \n- Entre 1 e 8 anos\n- Estar saudável. Sem histórico de doenças graves ou ter doenças infecciosas.\n- Sem histórico de transfusão recente, supro ou convulsões \n- Vacinas e vermifugações atualizadas \n-Sem medicação contínua (diária) \n- Comportamento dócil e que permita manipulação \n- Preferencialmente sem acesso a rua \n- Fêmeas em anestro, não gestantes e não lactantes.")

let question3 = Question(id: 3, question: "Qual é o procedimento realizado para meu cão doar sangue?", answer: "Uma vez que o tutor tem interesse em realizar a doação, antes de qualquer coisa é realizado exames físicos, hematólogicos e bioquímicos do animal gratuitamente para verificar se o seu cão está em boas condicões de saúde. Nos cães, são realizados hemograma completo, teste de função renal, detecção de Leshmaniose e Dirofilariose (vermes do coração), Erlichia Canis, Borrelia e Anaplasma (doenças transmitidas pelo carrapato).")

let question4 = Question(id: 4, question: "Qual é o procedimento realizado para meu gato doar sangue?", answer: "Uma vez que o tutor tem interesse em realizar a doação, antes de qualquer coisa é realizado exames físicos, hematólogicos e bioquímicos do animal gratuitamente para verificar se o seu felino está em boas condicões de saúde. Aos gatos doadores, são oferecidos hemograma completo, teste de função renal, sorologia para FIV (imunodeficiência viral felina) e FELV (Leucemia viral felina).")

let question5 = Question(id: 5, question: "O procedimento dura quanto tempo?", answer: "O tempo de doação é normalmente rápido, durando em média 15 minutos.")

let question6 = Question(id: 6, question: "Há algum risco no procedimento de doação?", answer: "Estando dentro dos requisitos mínimos e verificado que o pet está saudável e apto através de todos os exames e checagem da saúde geral, o processo é seguro, rapido e indolor. As vezes, quando necessário, é realizado uma sedação leve para manter o animalzinho calmo durante todo o processo. Uma vez passado, o único 'risco' para o animalzinho é se sentir um pouco fraco pós doação. O que é totalmente natural tanto para humanos, como animais.  Portanto, além de ser seguro, você poderá estar salvando vidas de diversos amiguinhos.")

let question7 = Question(id: 7, question: "É possível ser um doador regular?", answer: "Sim! Seu pet pode doar sangue novamente sem problema nenhum. Entretanto, é necesssario respeitar o intervalo de pelo menos 3 meses para uma próxima doação. Este é o tempo para garantir que seu pet está apto e totalmente recuperado para realizar uma nova doação.")

let question8 = Question(id: 8, question: "Gato pode doar sangue e destinar para um futuro cãozinho? Ou vice versa?", answer: "Não. Isto é um ponto bastante importante que deve ser destacado. Cães e gatos possuem diferentes tipos sanguineos que variam entre as raças. Por isso, antes da transfusão é realizado um teste de compatibilidade para saber se o sangue doador é compatível com quem irá receber. Para o lado canino temos DEA 1.1, DEA 1.2, DEA 1.3, DEA 3, DEA 4, DEA 5, DEA 7. E para o lado felino temos Tipo A, Tipo B e Tipo AB. A doação de sangue de um cachorro pode ajudar dependendo até quatro cães, e de gatos, dois.")

let question9 = Question(id: 9, question: "É necessário o pet estar em jejum para doar?", answer: "Normalmente o pet deve estar em jejum entre 4 - 5 horas antes da doação. Porém podem haver discrepâncias desta informação dependendo do seu local de doação, por isto, o ideal é confirmar esta informação entrando em contato com o local que você pretende doar. Quando a retirada do sangue terminar, normalmente o próprio banco de sangue há oferta de petiscos, comidas e ração para que o bichinho não fique fraco.")

let question10 = Question(id: 10, question: "Preciso levar algo além do meu pet para doar?", answer: "Somente a carteirinha de vacinação do pet.")

let question11 = Question(id: 11, question: "Quanto de sangue é extraído do meu pet?", answer: "Em média, os cães podem doar até 450ml de sangue, enquanto os gatos 40ml.")

let question12 = Question(id: 12, question: "Em que locais posso doar?", answer: "O aplicativo no momento cobre apenas a cidade de Porto Alegre. Os locais que você pode doar são Blutz e pela UFRGS")
