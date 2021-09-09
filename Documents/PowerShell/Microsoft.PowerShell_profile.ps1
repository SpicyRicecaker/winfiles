Invoke-Expression (&starship init powershell)

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function ForwardWord
Set-PSReadLineKeyHandler -Chord "Ctrl+w" -Function BackwardDeleteWord

$env:FZF_DEFAULT_COMMAND = 'fd'
$env:FZF_CTRL_T_COMMAND = 'fd --type f'
$env:FZF_ALT_C_COMMAND = 'fd --type d'

Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module PSFzf

$global:g = "$HOME\git"
$global:nvim = "$HOME\AppData\Local\nvim"

function dotgit () {
	git --git-dir=$HOME/winfiles.git/ --work-tree=$HOME $args
}

function ScreenOff {
    (Add-Type -MemberDefinition "[DllImport(""user32.dll"")]`npublic static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);" -Name "Win32SendMessage" -Namespace Win32Functions -PassThru)::SendMessage(0xffff, 0x0112, 0xF170, 2)
}
