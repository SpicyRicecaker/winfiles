Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function AcceptSuggestion
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

function dotgitlazy () {
	lazygit --git-dir=$HOME/winfiles.git/ --work-tree=$HOME $args
}

function lookup () {
	deno run --allow-net $HOME/git/lexico_scraper/main.ts $args
}


Invoke-Expression (&starship init powershell)
