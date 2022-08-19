

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
	$EmailFrom = New-Object MailAddress($args[1], $Name)
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
	Default {
        {Write-Output "Too many args!"; Exit}
    }
}



$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential ($Email,$Pass)#("powershellscripternotification", "kakefxlznwgudnoc");
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)





#$EmailFrom = New-Object MailAddress($args[1], "Notification Center"); #"powershellscripternotification@gmail.com"
#if ($args[4] -ne $null)
#{#
	#	$EmailFrom = New-Object MailAddress($args[1], $args[4]); #"powershellscripternotification@gmail.com"
#}
#$EmailTo = $args[0]
#$Subject = $args[1]
#$Body = $Subject
