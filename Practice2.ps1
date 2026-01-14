$Hashtable1=@{Name=@("John","Joe","Mary");DaysWorked=@(12,20,18)}
$Hashtable2=@{Name=@("John","Joe","Mary");SalaryPerDay=@(100,120,150)}
$Hashtable3=@{
    Name=$Hashtable1.Name;
    Salary=@(
        $Hashtable1.DaysWorked[0] * $Hashtable2.SalaryPerDay[0]
        $Hashtable1.DaysWorked[1] * $Hashtable2.SalaryPerDay[1]
        $Hashtable1.DaysWorked[2] * $Hashtable2.SalaryPerDay[2]
        )
}


Write-Output $Hashtable3
Write-Output $Hashtable3.Name
Write-Output $Hashtable3.Salary


#Variant1 autori
$hash1 = @{Name="John","Joe","Mary";DaysWorked=12,20,18}
$hash2 = @{Name="John","Joe","Mary";SalaryPerDay=100,120,150}
$JohnSalary = $hash1.DaysWorked[0] * $hash2.SalaryPerDay[0]
$JoeSalary = $hash1.DaysWorked[1] * $hash2.SalaryPerDay[1]
$MarySalary = $hash1.DaysWorked[2] * $hash2.SalaryPerDay[2]
$hash3 = @{
    Name=$hash1.Name[0],$hash1.Name[1],$hash1.Name[2];
    Salary=$JohnSalary,$JoeSalary,$MarySalary}
$hash3

#Variant2 autori. Alternate way using [PSCustomObject]
$ht1 = [PSCustomObject]@{
Name = "John","Joe","Mary"
DaysWorked = 12,20,18
}
$ht2 = [PSCustomObject]@{
Name = "John","Joe","Mary"
SalaryPerDay = 100,120,150
}
$ht3 = @()
$sal1 = $ht1.DaysWorked[0] * $ht2.SalaryPerDay[0]
$sal2 = $ht1.DaysWorked[1] * $ht2.SalaryPerDay[1]
$sal3 = $ht1.DaysWorked[2] * $ht2.SalaryPerDay[2]
$ht = [PSCustomObject]@{
Name = $ht1.Name[0]
Salary = $sal1
}
$ht3 += $ht
$ht = [PSCustomObject]@{
Name = $ht2.Name[1]
Salary = $sal2
}
$ht3 += $ht
$ht = [PSCustomObject]@{
Name = $ht1.Name[2]
Salary = $sal3
}
$ht3 += $ht
$ht3