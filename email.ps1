

$Name="Notification Center"
$Subject="Done!"
$Body="Done!"

switch($args.Count)
{
	1 {Write-Output "You need at least 3 args!"; Exit}
	2 {Write-Output "You need at least 3 args!"; Exit}
	3 {$EmailTo = $args[0]
	$EmailFrom = New-Object MailAddress($args[1], $Name)
	$Email=$args[1]
	$Pass=$args[2]
	}
	4 {$EmailTo = $args[0]
	$EmailFrom = New-Object MailAddress($args[1], $Name)
	$Email=$args[1]
	$Pass=$args[2]
	$Subject=$args[3]}
	5 {$EmailTo = $args[0]
	$Name=$args[4]
	$EmailFrom = New-Object MailAddress($args[1], $Name);
	$Email=$args[1]
	$Pass=$args[2]
	$Subject=$args[3]
	}
	6 {$EmailTo = $args[0]
	$Name=$args[4]
	$EmailFrom = New-Object MailAddress($args[1], $Name)
	$Email=$args[1]
	$Pass=$args[2]
	$Subject=$args[3]
	$Body=$args[5]}
	
	8 {
        {Write-Output "Too many args!"; Exit}
    }
}



$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential ($Email,$Pass)
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
