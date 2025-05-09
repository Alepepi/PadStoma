import SwiftUI

struct InfoButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(Color.blue)
            .cornerRadius(12)
            .shadow(radius: 5)
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

#Preview {
    Button(action: {}) {
        Text("TO TEST THIS BEAUTIFUL BUTTON")
    }
    .buttonStyle(InfoButtonStyle())
    .padding()
}
