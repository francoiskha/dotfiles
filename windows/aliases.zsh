say(){ powershell.exe -Command "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$1');" }

if command -v wslpath &> /dev/null
then
    pathaswsl() { wslpath -au "$1" }
    pathaswin() { wslpath -aw "$1" }
    pathasjava() { wslpath -am "$1" }
    pwdaswin() { wslpath -aw "$(pwd)" }
    pwdasjava() { wslpath -am "$(pwd)" }
fi