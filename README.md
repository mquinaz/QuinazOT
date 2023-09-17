# QuinazOT
 Tibia OT private server

![InstaTalk](https://github.com/mquinaz/QuinazOT/blob/main/images/quinazot.png)

## Port Forwarding
- Use global ip for config; use local ipv4 for port forwarding 7171, 7172, 80 ports both in router and firewall.

## Instructions

-The compilation instructions are here: https://github.com/otland/forgottenserver/wiki/Compiling-on-Windows-%28vcpkg%29
- After the dependencies are done open vc17 and open .sln in Visual Studio, then rebuild for x64 in Release. Open the generated folder and copy all the files except visual studio file extensions to root directory.

- Now we have a .exe that reads data directory and starts our server. Install XAMPP/UniserverZ and create a database and import the schema.sql. Now two alternatives, either insert in tables by hand with SQL queries or use https://github.com/Znote/ZnoteAAC .

- With ZnoteAAC put files under www directory of UniserverZ and connect localhost to create account in website(inserts in database).

- Now change config.lua with your mysql host,user,pass,database and IP. 
-
-Download tibia client 8.0 http://tibiaclient.otslist.eu/download/tibia800.exe and tibia ipchanger https://otland.net/threads/otland-ip-changer.134369/.

- After this is done start theforgottenserver-x64.exe, open the tibia 8.0 client and tibia ipchanger. Use your ip or localhost and client 8.0 to change IP. Now all is done and you can log in into your server.

- For later development download Remeres Map Editor https://otland.net/threads/remeres-map-editor-3-7.274405/, you might  need to download 7.4 version
