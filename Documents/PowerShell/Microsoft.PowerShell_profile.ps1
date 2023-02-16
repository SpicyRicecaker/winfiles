Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineKeyHandler -Chord "Ctrl+w" -Function BackwardDeleteWord

# zoxide
Invoke-Expression (& {
    (zoxide init --hook pwd powershell | Out-String)
})

$global:g = "$HOME\git"
$global:nvim = "$HOME\AppData\Local\nvim"

function dotgit () {
	git --git-dir=$HOME/winfiles.git/ --work-tree=$HOME $args
}

Invoke-Expression (&starship init powershell)
