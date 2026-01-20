import SwiftUI

@main
struct TerminalOSApp: App {
    var body: some Scene { WindowGroup { MainInterface() } }
}

struct MainInterface: View {
    var body: some View {
        TabView {
            TerminalView().tabItem { Label("Terminal", systemImage: "terminal") }
            AssistantView().tabItem { Label("AI Agent", systemImage: "cpu") }
            StoreView().tabItem { Label("IT Store", systemImage: "bag") }
        }.preferredColorScheme(.dark)
    }
}

struct TerminalView: View {
    @State private var logs = ["TerminalOS v2026.1", "Type 'help' for commands."]
    @State private var input = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(logs, id: \.self) { Text($0).font(.system(.body, design: .monospaced)).foregroundColor(.green) }
                }.frame(maxWidth: .infinity, alignment: .leading).padding()
            }.background(Color.black)
            HStack {
                Text("root#").foregroundColor(.blue).font(.system(.body, design: .monospaced))
                TextField("", text: $input).onSubmit(execute).autocorrectionDisabled().textInputAutocapitalization(.never)
            }.padding().background(Color.white.opacity(0.1))
        }
    }
    func execute() {
        logs.append("root# \(input)")
        let cmd = input.lowercased()
        if cmd == "help" { logs.append("Available: nmap, nc, ls, clear, status") }
        else if cmd == "status" { logs.append("OS: TerminalOS | Kernel: JIT-Active | User: root") }
        else { logs.append("sh: command not found: \(cmd)") }
        input = ""
    }
}

struct AssistantView: View {
    @State private var prompt = ""
    @State private var status = "AI Architect Ready."
    var body: some View {
        VStack(spacing: 20) {
            Text("AI MODULE GENERATOR").font(.headline).padding()
            Text(status).font(.caption).foregroundColor(.gray)
            TextField("Describe a new command...", text: $prompt).textFieldStyle(.roundedBorder).padding()
            Button("Build Module") { status = "Generating code for \(prompt)..." }.buttonStyle(.borderedProminent)
            Spacer()
        }
    }
}

struct StoreView: View {
    let tools = ["Nmap-Scanner", "Netcat-Legacy", "OpenSSH-Client"]
    var body: some View {
        List(tools, id: \.self) { tool in
            HStack { Text(tool); Spacer(); Button("Install") {}.buttonStyle(.bordered) }
        }
    }
}
