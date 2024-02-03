import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background Color
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                
                // Wave Shape
                Wave()
                    .fill(Color.white)
                    .offset(y: 100)
                
                VStack {
                    NavigationLink(destination: SecondView()) {
                        Text("Go to Second View")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationTitle("Colored Wave Background")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

