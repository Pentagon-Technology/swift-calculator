//
//  ContentView.swift
//  Calculator
//
//  Created by Dylan Armstrong on 7/4/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert: Bool = false
    @State private var answer: Int = 0
    
    @State private var isUsingNum2: Bool = false
    @State private var operation: String = ""
    @State private var number1: Array = [""];
    @State private var number2: Array = [""];
    var body: some View {
        
        
        VStack {
            HStack {
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("7")
                    } else {
                        number2.append("7")
                    }
                    
                }, label: {
                    Text("7")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("8")
                    } else {
                        number2.append("8")
                    }
                }, label: {
                    Text("8")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("9")
                    } else {
                        number2.append("9")
                    }
                }, label: {
                    Text("9")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        operation = "/"
                        isUsingNum2 = true
                    } else {
                        operation = ""
                        isUsingNum2 = false
                    }
                    
                }, label: {
                    Text("/")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
            }
            HStack {
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("4")
                    } else {
                        number2.append("4")
                    }
                }, label: {
                    Text("4")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("5")
                    } else {
                        number2.append("5")
                    }
                }, label: {
                    Text("5")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("6")
                    } else {
                        number2.append("6")
                    }
                }, label: {
                    Text("6")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    operation = "*"
                }, label: {
                    Text("*")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                
            }
            HStack {
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("1")
                    } else {
                        number2.append("1")
                    }
                }, label: {
                    Text("1")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("2")
                    } else {
                        number2.append("2")
                    }
                }, label: {
                    Text("2")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("3")
                    } else {
                        number2.append("3")
                    }
                }, label: {
                    Text("3")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    operation = "-"
                }, label: {
                    Text("-")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
            }
            HStack {
                Button(action: {
                    if(!isUsingNum2) {
                        number1.append("0")
                    } else {
                        number2.append("0")
                    }
                }, label: {
                    Text("0")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
                Button(action: {
                    showingAlert = true;
                    let num1Joined = Int(number1.joined()) ?? 0;
                    let num2Joined = Int(number2.joined()) ?? 0;
                    answer = num1Joined + num2Joined;
                }, label: {
                    Text("=")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                        .alert(String(answer), isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                })
                Button(action: {
                    if(!isUsingNum2) {
                        operation = "+"
                        isUsingNum2 = true
                    } else {
                        operation = ""
                        isUsingNum2 = false
                    }
                }, label: {
                    Text("+")
                        .font(.system(size:30)).foregroundColor(Color.black)
                        .padding()
                        .border(Color.black, width:3)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
