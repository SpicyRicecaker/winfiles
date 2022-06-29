Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Chord "Ctrl+w" -Function BackwardDeleteWord

# zoxide
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

$global:g = "$HOME\git"
$global:nvim = "$HOME\AppData\Local\nvim"

function dotgit () {
	git --git-dir=$HOME/winfiles.git/ --work-tree=$HOME $args
}

function dotgitlazy () {
	lazygit --git-dir=$HOME/winfiles.git/ --work-tree=$HOME $args
}

Invoke-Expression (&starship init powershell)