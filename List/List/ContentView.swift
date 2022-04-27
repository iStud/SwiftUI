//
//  ContentView.swift
//  List
//
//  Created by xbk on 2022/4/27.
//

import SwiftUI

struct Pokemon:Identifiable{
    let id:Int // 标识每一行的 row是唯一的
    let name:String
    let type:String
    let color:Color
}

struct ContentView: View {
    
    @State var pokemonList = [
        Pokemon(id: 0, name: "Charmander", type: "Fire", color: .red),
        Pokemon(id: 1, name: "Squirtle", type: "Water", color: .blue),
        Pokemon(id: 2, name: "Bulbasaur", type: "Grass", color: .green),
        Pokemon(id: 3, name: "Pikachu", type: "Electric", color: .yellow),
    ]
    
    
    var body: some View {
        
        NavigationView {
            
            List(pokemonList){ pokemon in
                
                HStack{
                    Text(pokemon.name)
                    Text(pokemon.type).foregroundColor(pokemon.color)
                }
                
            }
            .navigationBarTitle(Text("Pokemon"))
            .navigationBarItems(
                trailing:Button(action: addPokemon, label: {Text("Add")})
            )
        }
    }
    
    func addPokemon(){
        if let randomPokemon = pokemonList.randomElement() {
            pokemonList.append(randomPokemon)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
