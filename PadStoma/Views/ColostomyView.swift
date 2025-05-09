import SwiftUI

struct ColostomyView: View {
    var body: some View {
        VStack {
            Spacer()

            Image("Union")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300, maxHeight: 300)

            Spacer()
        }
        .padding()
        .navigationTitle("Colostomy")
    }
}

#Preview {
    ColostomyView()
}
