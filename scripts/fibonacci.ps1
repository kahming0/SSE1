param (
    [switch]$PRINT
)

$A = 0
$B = 1

while ($true) {
    if ($PRINT) {
        Write-Host $A
    }
    $FN = $A + $B
    $A = $B
    $B = $FN
}