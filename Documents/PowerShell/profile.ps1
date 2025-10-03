#region mamba initialize
# !! Contents within this block are managed by 'mamba shell init' !!
$Env:MAMBA_ROOT_PREFIX = "C:\Users\aweso\AppData\Roaming\mamba"
$Env:MAMBA_EXE = "C:\Users\aweso\AppData\Local\micromamba\micromamba.exe"
(& $Env:MAMBA_EXE 'shell' 'hook' -s 'powershell' -r $Env:MAMBA_ROOT_PREFIX) | Out-String | Invoke-Expression
#endregion
