#Array1 and Array2 
$Array1 = @(1,2,3)
$Array2 = @(4,5,6)

#Array3 = sum of corresponding values
$Array3 = @(
    $Array1[0] + $Array2[0]
    $Array1[1] + $Array2[1]
    $Array1[2] + $Array2[2]
)

#Output
Write-Output "Array1: $Array1"
Write-Output "Array2: $Array2"
Write-Output "Array3: $Array3"

#Variant autori
$array1 = @(1,2,3)
$array2 = @(4,5,6)
$array3 = @()
$array3 += $array1[0] + $array2[0]
$array3 += $array1[1] + $array2[1]
$array3 += $array1[2] + $array2[2]
$array3