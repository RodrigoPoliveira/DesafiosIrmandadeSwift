//
//  ContentView.swift
//  DesafioLogin
//
//  Created by Rodrigo Oliveira on 13/03/23.
//
// Desafio para realizar o uso e estudo de:
// - Form
// - TextField, Secure Field
// - Sheet
// - Alert
// - Extension de structs

import SwiftUI

struct DesafioLogin: View {
    @AppStorage("storageUsuario") var storageUsuario = ""
    @State var usuario = String()
    @State var senha = String()
    @AppStorage("storageLembrarDeMim") var storageLembrarDeMim = false
    @State var lembrarDeMim = false
    @State var usuarioAutenticado = false
    @State var erroAutenticacao = false
    
    var body: some View {
        
        VStack {
            Group {
                Image("logo_irmandade_preto")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            }
            
            Form{
                Section {
                    TextField("", text: $usuario, prompt: Text("Usuário").foregroundColor(.black))
                        .onAppear(){
                            if storageLembrarDeMim == true {
                                usuario = storageUsuario
                            }
                        }
                    SecureField("", text: $senha, prompt: Text("Senha").foregroundColor(.black))
                }
                .listRowBackground(Color.black.opacity(0.1))
                .listRowSeparatorTint(.black)
                
                
                Toggle("Lembrar de mim", isOn: $lembrarDeMim)
                    .tint(.black)
                    .onAppear(){
                        lembrarDeMim = storageLembrarDeMim
                    }
            }
            .scrollContentBackground(.hidden)
            .frame(height: 230)
            .padding(EdgeInsets(top: 30, leading: 10, bottom: 0, trailing: 10))
            
            Button("Entrar"){
                validarAutenticacao()
            }
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.black).frame(width: 100, height: 50))
            .tint(.white)
            .bold()
            .padding()
            
        }
        .preferredColorScheme(.light)
        
        .sheet(isPresented: $usuarioAutenticado) {
            VStack {
                HStack {
                    Text("Bem vindo, Rodrigo")
                        .font(.system(size: 50, weight: .bold))
                        .padding()
                    Text("🚀")
                        .font(.system(size: 70))
                        .padding()
                }
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 190, height: 10)
                    .padding(Edge.Set.leading, -100)
                    
                
                Button("Sair"){
                    usuarioAutenticado = false
                }
                .background(RoundedRectangle(cornerRadius: 10).fill(.black).frame(width: 90, height: 40))
                .tint(.white)
                .bold()
                .padding(Edge.Set.top, 40)

            }
            .preferredColorScheme(.light)
        }
        
        .alert(" Erro na autenticação", isPresented: $erroAutenticacao) {
            Button("OK"){
                erroAutenticacao.toggle()
            }
        } message: {
            Text("Usuário ou senha inválidos")
        }
    }
}

struct DesafioLogin_Previews: PreviewProvider {
    static var previews: some View {
        DesafioLogin()
    }
}

struct credenciais {
    let usuario = "rodrigo"
    let senha = "irmandade"
}

extension DesafioLogin{
    func validarAutenticacao() {
        if usuario.lowercased() == credenciais().usuario && senha.lowercased() == credenciais().senha {
            armazenarDados()
            usuarioAutenticado = true
        } else{
            erroAutenticacao = true
        }
        senha = ""
    }
    
    func armazenarDados(){
        storageLembrarDeMim = lembrarDeMim
        storageUsuario = usuario
    }
}
