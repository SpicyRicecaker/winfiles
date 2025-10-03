# Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineKeyHandler -Chord "Ctrl+w" -Function BackwardDeleteWord

# zoxide
Invoke-Expression (& {
    (zoxide init --hook pwd powershell | Out-String)
})

$global:g = "$HOME\git"
# $global:nvim = "$HOME\AppData\Local\nvim"

function dotgit () {
	git --git-dir=$HOME/winfiles.git/ --work-tree=$HOME $args
}

# dsl
function reset () {
    rm -r -fo a2-test-modifier
    cp -r a2-test a2-test-modifier
    code a2-test-modifier
}

function reloadpath() {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")
}

function ec() {
    emacsclient -c $args
}

# function cutesongs () {
#   cd $HOME/git/cute_songs/songs/ && mpv * --shuffle
# }

# Invoke-Expression (&starship init powershell)

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
# $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
# if (Test-Path($ChocolateyProfile)) {
#   Import-Module "$ChocolateyProfile"
# }
