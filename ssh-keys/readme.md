# SSH-KEY

- [x] Ale DC

###### How to generate a SSH public and privated Key and store in your VPS server for login without entering a password every time.



#### 1 - the first step is generate the public and privated keys in the terminal of your local machine:
```
ssh-keygen -t rsa -b 2048
```

you need to set a name for the file 


#### 3- choose a strong password (recomended)


#### 4 - now, configure your local SSH editing the ssh.conf, in MAC, this file is located in:
```
/private/etc/ssh/sshd_config
```
#### 5 - then, add this two lines:

```
PubkeyAuthentication yes
RSAAuthentication yes
```


#### 6 - after having done the aforementioned, you need to stop and start the SSH server (this commands are for mac users only)
```
sudo launchctl stop com.openssh.sshd
sudo launchctl start com.openssh.sshd
```

#### 7 - if you receive an error:

"WARNING: UNPROTECTED PRIVATE KEY FILE!" 

for solution simply change te permission of the generated key:
```
sudo chmod 600 your_key_name
```

###### NOTE: If the key that is being added is the pubic, it will not have a password.



#### 8 - then, you need to upload the public key to your server

````
ssh-copy-id -i your_key_name root@your_server_ip
````

#### 10 -  then, add the private key to the local machine
```
ssh-add your_key_name
```
now you must enter the password for the private key

If everything went well, now you can log in without entering the password

```
ssh root@your_server_ip
```


That is all.

Regards








