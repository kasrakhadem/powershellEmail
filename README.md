# powershellEmail
## Requirements

1. you need a Gmail account
    1. From May 30, 2022, ​​Google no longer supports the use of third-party apps or devices which ask you to sign in to your Google Account using only your username and password.
    2. You need to turn on the 2 step-verification on your gmail account
    3. Create a App password
    4. Use the app password instead of your normal password
2. Powershell (on Windows or Mac)
3. Call the script after you task is finished!

## Arguments:  
 1. **Minimum**: ``` "Email_to" "Email_from" "Email_from_password"  ```
 2. **With subject**: ```"Email_to" "Email_from" "Email_from_password" "Subject" ``` 
 3. **With Different Sender Name**: ```"Email_to" "Email_from" "Email_from_password" "Subject" "Sender Name"  ```
 4. **With Body**: ```"Email_to" "Email_from" "Email_from_password" "Subject" "Sender Name" "Body"  ```
	
## Powershell Use:  
If the Set-ExecutionPolicy is not set:  
	```Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process```  is the safest choice.
