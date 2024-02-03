import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            // Background Color
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            // Wave Shape
            Wave()
                .fill(Color.white)
                .offset(y: 100)
            
            VStack {
                Text("This is the Second View!")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Colored Wave Background")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

