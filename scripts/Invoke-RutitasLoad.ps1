param(
  [Parameter(Mandatory=$true)][string]$StagingUrl,
  [Parameter(Mandatory=$true)][string]$Jwt,
  [int]$Concurrent = 10,
  [int]$Requests = 50
)
# Opt-in diagnostic only. Use an explicitly authorized STAGING environment, never production.
if ($Concurrent -lt 1 -or $Concurrent -gt 50 -or $Requests -lt 1 -or $Requests -gt 500) { throw 'Concurrent 1..50; Requests 1..500' }
$http=[System.Net.Http.HttpClient]::new()
$http.DefaultRequestHeaders.Authorization=[System.Net.Http.Headers.AuthenticationHeaderValue]::new('Bearer',$Jwt)
$base=$StagingUrl.TrimEnd('/')
$stopwatch=[System.Diagnostics.Stopwatch]::StartNew()
$completed=0;$errors=0
try {
  for ($start=0;$start -lt $Requests;$start+=$Concurrent) {
    $batch=@()
    $count=[Math]::Min($Concurrent,$Requests-$start)
    for ($i=0;$i -lt $count;$i++) { $batch += $http.GetAsync("$base/api/v1/routes?page=1&pageSize=20") }
    [System.Threading.Tasks.Task]::WaitAll([System.Threading.Tasks.Task[]]$batch)
    foreach($task in $batch) { $completed++; if (-not $task.Result.IsSuccessStatusCode) { $errors++ }; $task.Result.Dispose() }
  }
} finally { $stopwatch.Stop();$http.Dispose() }
Write-Output "Finished: $completed requests, $errors non-2xx responses, duration $($stopwatch.Elapsed.TotalSeconds) sec"
Write-Output 'Not a calibrated benchmark. Use NBomber to measure p95 after an approved environment exists.'
