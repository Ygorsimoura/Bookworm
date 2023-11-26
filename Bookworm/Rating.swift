//
//  Rating.swift
//  Bookworm
//
//  Created by Ygor Simoura on 25/11/23.
//

import SwiftUI

struct Rating: View {
    @Binding var rating: Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onnImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onnColor = Color.yellow
    
    var body: some View {
        HStack{
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                Button {
                    rating = number
                } label: {
                    image(for: number)
                        .foregroundStyle(number > rating ? offColor : onnColor)
                }
            }
        }
        .buttonStyle(.plain) // isso faz com que o SwiftUi interprete individualmente cada botão dentro da linha do nosso formulário
    }
        
    func image(for number: Int) -> Image {
            if number > rating {
                offImage ?? onnImage
            } else {
                onnImage
            }
        }
        /* se o numero que foi passado como nossa classificacao atual for maior que a classificação atual, no caso se
        estiver na estrela N 4 e nossa classificacao for N 3, retorne a imagem desligada se estiver definida, caso contrario
         retone a imagem ativa. E se caso o numero for igual ou menor ao numero passado, torne a imagem ligada.
         */
    
}

#Preview {
    Rating(rating: .constant(4)) //como é um valor opcional isso defini ele como padrao para 4
}
