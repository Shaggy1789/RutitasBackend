param(
    [Parameter(Mandatory=$true)][string]$BaseUrl,
    [Parameter(Mandatory=$true)][string]$Jwt
)
$ErrorActionPreference = 'Stop'
$root = $BaseUrl.TrimEnd('/')
$headers = @{ Authorization = "Bearer $Jwt" }
# Requests on a test/staging environment with a disposable user; do not echo JWT.
function CheckStatus([string]$Url, [int]$Expected) {
  try { $r = Invoke-WebRequest -Uri $Url -Headers $headers -Method Get; $status=[int]$r.StatusCode }
  catch { if ($_.Exception.Response) { $status=[int]$_.Exception.Response.StatusCode } else { throw } }
  if ($status -ne $Expected) { throw "FAIL $Url : expected $Expected, got $status" }
  Write-Output "PASS $Url HTTP $status"
}
CheckStatus "$root/api/v1/users/me" 200
CheckStatus "$root/api/v1/routes?page=1&pageSize=20" 200
CheckStatus "$root/api/v1/routes/abc" 400
CheckStatus "$root/api/v1/routes/507f1f77bcf86cd799439011" 404
