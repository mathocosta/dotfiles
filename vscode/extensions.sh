# Output from `code --list-extensions`
extensions=(
    "dracula-theme.theme-dracula"
    "redhat.java"
    "visualstudioexptteam.intellicode-api-usage-examples"
    "visualstudioexptteam.vscodeintellicode"
    "vscjava.vscode-java-debug"
    "vscjava.vscode-java-dependency"
    "vscjava.vscode-java-pack"
    "vscjava.vscode-java-test"
    "vscjava.vscode-maven"
    "vscodevim.vim"
)

if ! command -v code &> /dev/null; then
    echo "ERROR: vscode is not installed, cancelling extensions instalation."
    exit 1
fi

for ext in "${extensions[@]}"
do
    code --install-extension $ext
done
