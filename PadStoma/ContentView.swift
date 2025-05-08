import SwiftUI

struct ContentView: View {
    @StateObject var router = NavigationRouter()

    let images = ["StomaBag", "StomaBag2", "StomaBag3"]
    let rotations: [Double] = [-45, -35, 0, 35, 45]

    var body: some View {
        NavigationStack(path: $router.path) {
            VStack {
                HStack {
                    Button("", systemImage: "gearshape.fill") {
                        print("Settings")
                    }
                    .padding()
                    .font(.system(size: 50, weight: .regular, design: .default))
                    .foregroundColor(Color.bluePrimary)

                    Spacer()
                }

                Image("VectorStomaDida")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 500)
                    .padding(.bottom, 100)

                Button {
                    router.path.append(.play)
                } label: {
                    HStack {
                        Image(systemName: "play.fill")
                        Spacer()
                        Text("Play")
                        Spacer()
                    }
                }
                .padding()
                .font(.system(size: 50, weight: .regular, design: .default))
                .foregroundColor(.white)
                .frame(width: 350)
                .background(Color.bluePrimary)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.clear)
                        .stroke(Color.blueSecond, lineWidth: 3)
                }
                .padding()

                Button {
                    router.path.append(.tools)
                } label: {
                    HStack {
                        Image(systemName: "cross.case")
                        Spacer()
                        Text("Tools")
                        Spacer()
                    }
                }
                .padding()
                .font(.system(size: 50, weight: .regular, design: .default))
                .foregroundColor(.white)
                .frame(width: 350)
                .background(Color.bluePrimary)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.clear)
                        .stroke(Color.blueSecond, lineWidth: 3)
                }
                .padding()

                Spacer()

                ScrollView(.horizontal) {
                    HStack {
                        ForEach(images, id: \.self) { imageName in
                            ForEach(rotations, id: \.self) { angle in
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .rotationEffect(.degrees(angle))
                                    .frame(maxWidth: 300, maxHeight: 150)
                                    .padding()

                                Spacer(minLength: 20)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding()
            .background(Color(red: 208 / 255, green: 247 / 255, blue: 245 / 255))
            .overlay {
                Image("Nurse")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 600, maxHeight: 400)
                    .padding()
                    .offset(x: 450, y: 100)
            }
            .overlay {
                Image("StomaBag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300, maxHeight: 200)
                    .padding()
                    .offset(x: -350, y: -300)
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .play:
                    PlayView()
                case .tools:
                    ToolsView()
                case .colostony:
                    ColostonyView()
                }
            }
        }
        .environmentObject(router)
    }
}

#Preview {
    ContentView()
}
