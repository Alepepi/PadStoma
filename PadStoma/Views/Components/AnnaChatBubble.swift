import SwiftUI

struct ChatBotOverlay: View {
    @State private var currentStep: Int = 0
    
    let steps = [
        "Step 1: Wash your hands thoroughly.",
        "Step 2: Gather all necessary supplies.",
        "Step 3: Gently remove the used pouch.",
        "Step 4: Clean the stoma and surrounding skin.",
        "Step 5: Apply a new pouch securely.",
        "Step 6: Dispose of used materials and wash hands again."
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .bottom, spacing: 16) {
                Image("Nurse")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 4)
                VStack(alignment: .leading) {
                    Text(steps[currentStep])
                        .padding(10)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(20)
                        .font(.body)
                        .transition(.slide)
                    Button(action: {
                        if currentStep < steps.count - 1 {
                            currentStep+=1
                        }
                    }) {
                        Text("Next")
                            .font(.caption)
                            .foregroundColor(.blue)
                            .padding(.top, 4)
                    }
                }
                Spacer()
            }
            .padding()
            .background(Color.bluePrimary)
        }
    }
}


