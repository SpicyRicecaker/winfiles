# Initiate starship prompt
Invoke-Expression (&starship init powershell)

# Allow shell predictions
Set-PSReadLineOption -PredictionSource History
# Set the shell keybindings to emacs
Set-PSReadLineOption -EditMode Emacs

$env:FZF_DEFAULT_COMMAND = 'fd'
$env:FZF_CTRL_T_COMMAND = 'fd --type f'
$env:FZF_ALT_C_COMMAND = 'fd --type d'

Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module PSFzf

# Git directory
$global:g = "$HOME\git"
# Neovim config file
$global:nvim = "$HOME\AppData\Local\nvim"

function dotgit () {
	git --git-dir=$HOME/winfiles/ --work-tree=$HOME $args
}

# useful functions
# function CropItems {
#     Write-Output `gs -o cropped.pdf -sDEVICE=pdfwrite -c "[/CropBox [0 34 575 800]" -c " /PAGES pdfmark" -f *.pdf`
# }

# function CombineItems {
#     Write-Output `gs -q -o cropped.pdf -sDEVICE=pdfwrite input.pdf`
# }

# function Parkbird {
#     Invoke-Expression "mpv.exe (Get-ChildItem $HOME\Desktop\music\parkbird -filter *.webm | Sort-Object LastWriteTime -Descending)"
# }

# function OnlineParkbird {
#     Start-Process "mpv.exe" -ArgumentList "--ytdl-raw-options=yes-playlist=", "--no-video", "https://www.youtube.com/watch?v=raAd_lc7tPk&list=UU3EvksMGiWyNPkHCOZ1Fa9g" -NoNewWindow -Wait
# }

# function ConvertMagick {
#     Invoke-Expression "magick convert *.JPEG $((Get-Item .).Name).pdf"
# }

function ScreenOff {
    (Add-Type -MemberDefinition "[DllImport(""user32.dll"")]`npublic static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);" -Name "Win32SendMessage" -Namespace Win32Functions -PassThru)::SendMessage(0xffff, 0x0112, 0xF170, 2)
}
