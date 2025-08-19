//
//  AuthView.swift
//  ChatApp
//
//  Created by Angel Bitsov on 8/19/25.
//

import SwiftUI

struct AuthView: View {
    
    @State private var selectedOption: Int = 0
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Picker(selection: $selectedOption, label: Text("Picker")) {
                    Text("Log In").tag(0)
                    Text("Sign Up").tag(1)
                }
                .pickerStyle(.segmented)
                Group {
                    TextField("Enter your username or email", text: $username)
                    SecureField("Enter Password", text: $password)
                }
                .padding(5)
                .textFieldStyle(.roundedBorder)
            }
            .navigationTitle("Create Account")
            .padding()
        }
    }
}

#Preview {
    AuthView()
}

