//
//  ContentView.swift
//  State
//
//  Created by xbk on 2022/4/27.
//

import SwiftUI

struct ContentView: View {
    
    // 修改关键词 @State 修饰的属性，整个 view 的 body 就会被重新渲染。
    @State var pokemonName = "Charmander"
    
    var body: some View {
        VStack {
            Text(pokemonName)
                .frame(width: UIScreen.main.bounds.width, height: 50
                )
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            Button(
                action: {self.switchPokemon()},
                label: {Text("Switch")}
            )
        }

    }
    
    func switchPokemon() {
        
        let list = ["Squirtle","Bulbasaur","Charmander","Pikachu"];
        pokemonName = list.randomElement() ?? ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
