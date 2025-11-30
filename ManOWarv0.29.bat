@echo off
REM author: Levi Santegoets, The Netherlands. 
REM email: contact.levisantegoets@gmail.com
REM API for CURL ref: https://github.com/chubin/awesome-console-services?tab=readme-ov-file#Map
REM [CONSTRUCTION RULES] [][][][][]
REM
REM (mainconstruct)
REM :inboundfrommainmenu
REM [CMD TARGET COMMAND]
REM IF %loggingoutput%==on [CMD TARGET COMMAND] >>%~dp0manowaroutputlog.txt
REM IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
REM IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
REM goto catspallin
REM
REM (error_handling_protocol_construct)
REM IF %errorlevel%==1 (
REM     echo Warning! the powerscheme not has been activated.
REM ) ELSE (
REM     echo Success! the powerscheme has been activated.
REM )
REM
REM [CONSTRUCTION RULES] [][][][][]
set "tempvbs=%TEMP%\manowarwelcomemsg.vbs"
(
  echo MsgBox "To get ""the best performance"" out of this program," ^& vbCrLf ^& "make sure that you execute this program with local administrator permissions." ^& vbCrLf ^& "This is a program designed for Windows system administrators." ^& vbCrLf ^& "It bypasses standard safeguards, allowing settings that can degrade performance, damage your system, or even require you to reinstall Windows.",48,"Welcome to Man o' War - a library for command line tools."
)>"%tempvbs%"
cscript //nologo "%tempvbs%"
del /f /q "%tempvbs%" 2>nul
REM [blacklistsecurity]
REM goto checkblacklistagainstpubip
REM :publicipallowed
REM [blacklistsecurity]
REM PRESENT FUNCTION VARIABLE:
SET functioncounts=213
SET logging=notdefinedd
SET loggingoutput=notdefineddd
IF EXIST %~dp0loggingmodeon.txt SET logging=on
IF EXIST %~dp0loggingoutputmodeon.txt SET loggingoutput=on
:clss

set vrsion=v0.29
title Man o' War %vrsion% - A library for commandline tools.
echo  __    __     ______     __   __        ______   __   __     __     ______     ______    
echo /\ "-./  \   /\  __ \   /\ "-.\ \      /\  __ \  \/  /\ \  _ \ \   /\  __ \   /\  == \  
echo \ \ \-./\ \  \ \  __ \  \ \ \-.  \     \ \ \/\ \     \ \ \/ ".\ \  \ \  __ \  \ \  __<  
echo  \ \_\ \ \_\  \ \_\ \_\  \ \_\\"\_\     \ \_____\     \ \__/".~\_\  \ \_\ \_\  \ \_\ \_\
echo   \/_/  \/_/   \/_/\/_/   \/_/ \/_/      \/_____/      \/_/   \/_/   \/_/\/_/   \/_/ /_/
echo.                                                                                 %vrsion%
echo Transforms CMD from a barebones shell into a multipurpose environment.
echo [DATE:%date%] [TIME:%time%] [USER:%username%] [HOSTNAME: %computername%]
:ebrx                            
:catspallin
SET /P catspal=%~dp0Man o' War %vrsion%^^^_`^>
IF %catspal%==help goto mainhelpmenudevinit
IF %catspal%==fullhelp goto help
IF %catspal%==h goto mainhelpmenudevinit
IF %catspal%==mow goto intervalMOW
IF %catspal%==as goto intervalAS
IF %catspal%==lo goto intervalLO
IF %catspal%==wg goto intervalWG
IF %catspal%==cs goto intervalCS
IF %catspal%==dt goto intervalDT
IF %catspal%==fl goto intervalFL
IF %catspal%==sh goto intervalSH
IF %catspal%==bp goto intervalBP
IF %catspal%==wl goto intervalWL
IF %catspal%==pt goto intervalPT
IF %catspal%==rm goto intervalRM
IF %catspal%==nm goto intervalNM
IF %catspal%==ws goto intervalWS
IF %catspal%==ts goto intervalTS
IF %catspal%==td goto intervalTD
IF %catspal%==sf goto intervalSF
IF %catspal%==sc goto intervalSC
IF %catspal%==rw goto intervalRW
IF %catspal%==ug goto intervalUG
IF %catspal%==gp goto intervalGP
IF %catspal%==tx goto intervalTX
IF %catspal%==ad goto intervalAD
IF %catspal%==sx goto intervalSX
IF %catspal%==cx goto intervalCX
IF %catspal%==st goto intervalST
IF %catspal%==ig goto intervalIG
IF %catspal%==ni goto intervalNI
IF %catspal%==mm goto intervalMM
IF %catspal%==fr goto intervalFR
IF %catspal%==mg goto intervalMG
IF %catspal%==cc goto intervalCC
IF %catspal%==execute goto executee
IF %catspal%==gmrtp goto gmrtpp
IF %catspal%==batav goto batavv
IF %catspal%==getnaspic goto getnaspicc
IF %catspal%==cleantmp goto cleantmpp
IF %catspal%==expelfc goto expelfcc
IF %catspal%==biosinf goto biosinfinit
IF %catspal%==gpuinf goto gpuinfinit
IF %catspal%==gram goto graminit
IF %catspal%==motbor goto logicbrd
IF %catspal%==8664 goto 8993301
IF %catspal%==expelhc goto expelhcc
IF %catspal%==flaunchp goto flaunchpp
IF %catspal%==fsc goto fscc
IF %catspal%==initnmap goto initnmapp
IF %catspal%==expelnmap goto expelnmapp
IF %catspal%==nmap goto nmapcc
IF %catspal%==privorpub goto privorpubb
IF %catspal%==getmacinf goto getmacinff
IF %catspal%==delgpo goto delgpoo
IF %catspal%==editgpo goto editgpoo
IF %catspal%==addgpotoou goto addgpotoouu
IF %catspal%==uninrsat goto uninstallrsatt
IF %catspal%==installrsat goto installrsatt
IF %catspal%==addsrepchk goto addsrepchkk
IF %catspal%==fgpoupdate goto fgpoupdatee
IF %catspal%==delcompacc goto delcompaccc
IF %catspal%==addcompacc goto addcompaccc
IF %catspal%==enadomusr goto enadomusrr
IF %catspal%==disdomusr goto disdomusrr
IF %catspal%==resusrpass goto resusrpasss
IF %catspal%==ougroupusrs goto ougroupusrss
IF %catspal%==addgrptoou goto addgrptoouu
IF %catspal%==expusrfrmou goto expusrfrmouu
IF %catspal%==addusrtoou goto addusrtoouu
IF %catspal%==listorgunit goto listorgunitt
IF %catspal%==leavedc goto leavedcc
IF %catspal%==joindc goto joindcc
IF %catspal%==addsgetgrp goto addsgetgrpp
IF %catspal%==addsgetusr goto addsgetusrr
IF %catspal%==diskhealth goto diskhealthh
IF %catspal%==syshealth goto syshealthh
IF %catspal%==sha512eval goto sha512evall
IF %catspal%==sha384eval goto sha384evall
IF %catspal%==sha256eval goto sha256evall
IF %catspal%==sha1eval goto sha1evall
IF %catspal%==md4eval goto md4evall
IF %catspal%==md2eval goto md2evall
IF %catspal%==ipcreset goto ipcresett
IF %catspal%==dsrhex goto dsrhexx
IF %catspal%==asrhex goto asrhexx
IF %catspal%==dsr goto delstaticroute
If %catspal%==asr goto addstaticroutes
IF %catspal%==grt goto groutetabb
IF %catspal%==mtransmit goto mtransmitt
IF %catspal%==unveil goto unveill
IF %catspal%==gauntlet goto gauntlett
IF %catspal%==md5eval goto md5evall
IF %catspal%==pcapngconv goto pcapngconvv
IF %catspal%==portippkt goto portippktt
IF %catspal%==getipport goto getipportt
IF %catspal%==getippack goto getippackk
IF %catspal%==getpackets goto getpacketss
IF %catspal%==arcadegm goto arcadegmm
IF %catspal%==reboot goto reboott
IF %catspal%==playsnake goto playsnakee
IF %catspal%==sshchat goto sshchatt
IF %catspal%==gct goto gctt
IF %catspal%==atescalate goto atescalatee
IF %catspal%==detectvlan goto detectvlann
IF %catspal%==sysinfmgmt goto sysinfmgmtt
IF %catspal%==compmgmt goto compmgmtt
IF %catspal%==prefmon goto prefmonn
IF %catspal%==gpeditor goto gpeditorr
IF %catspal%==eventvi goto eventvii
IF %catspal%==devmgmt goto devmgmtt
IF %catspal%==sysserv goto sysservv
IF %catspal%==regeditor goto regeditorr
IF %catspal%==taskmgr goto taskmgrr
IF %catspal%==mmc goto mmcc
IF %catspal%==msconfig goto msconfigg
IF %catspal%==mrt goto mrtt
IF %catspal%==dnshex goto dnshexx
IF %catspal%==fetchlinks goto fetchlinkss
IF %catspal%==findgif goto findgiff
IF %catspal%==initnyan goto initnyann
IF %catspal%==hackernews goto hackernewss
IF %catspal%==cheatsh goto cheatshh
IF %catspal%==adsb goto adsbb
IF %catspal%==badip goto badipp
IF %catspal%==badurl goto badurll
IF %catspal%==checkciph goto checkciphh
IF %catspal%==getrevdns goto getrevdnss
IF %catspal%==myhostnm goto myhostnmm
IF %catspal%==pubip goto pubipp
IF %catspal%==rdaptrack goto rdaptrackk
IF %catspal%==getbgpip goto getbgpipp
IF %catspal%==asnispip goto asnispipp
IF %catspal%==askquest goto askquestt
IF %catspal%==revgeoloc goto revgeolocc
IF %catspal%==getiss goto isss
IF %catspal%==checkhc goto checkhcc
IF %catspal%==checkhand goto checkhandd
IF %catspal%==checkrslv goto checkrslvv
IF %catspal%==getsh goto getshh
IF %catspal%==telljoke goto telljokee
IF %catspal%==giveadvice goto giveadviced
IF %catspal%==shutlist goto shutlists
IF %catspal%==pingip goto pingipp
IF %catspal%==geolocate goto geolocateion
IF %catspal%==spke goto spkee
IF %catspal%==syslog goto syslogg
IF %catspal%==showcreds goto scstsdmmasfdhfhg
IF %catspal%==eleval goto elevall
IF %catspal%==netinface goto netinfacee
IF %catspal%==mac goto macc
IF %catspal%==ipv4 goto ipv44
IF %catspal%==ipv6 goto ipv66
IF %catspal%==dns goto dnss
IF %catspal%==derp goto derpp
IF %catspal%==erp goto erpp
IF %catspal%==spc goto spcc
IF %catspal%==enf goto enff
IF %catspal%==dnf goto dnff
If %catspal%==cnf goto cnff
IF %catspal%==sps goto spss
IF %catspal%==sss goto ssss
IF %catspal%==dps goto dpss
IF %catspal%==cps goto cpss
IF %catspal%==tracert goto tracertt
IF %catspal%==sfc goto scfderd
IF %catspal%==scf goto scff
IF %catspal%==dlg goto dlgg
IF %catspal%==ef goto eff
IF %catspal%==rsop goto rsops
IF %catspal%==udgp goto udgpp
IF %catspal%==dufg goto dufgg
IF %catspal%==clg goto clgg
IF %catspal%==astg goto astgg
IF %catspal%==du goto duu
IF %catspal%==slg goto slgg
IF %catspal%==ca goto caa
IF %catspal%==cu goto cuu
IF %catspal%==wat goto watt
IF %catspal%==cfr goto crffa
IF %catspal%==dfr goto dfrra
IF %catspal%==gcp goto gfpllp
IF %catspal%==gfp goto gfpl
IF %catspal%==ifr goto ifrr
IF %catspal%==ofr goto ofrr
IF %catspal%==gf goto gff
IF %catspal%==dp goto dupl
IF %catspal%==gc goto gccc
IF %catspal%==st goto stsls
IF %catspal%==kt goto ktl
IF %catspal%==stl goto stls
IF %catspal%==irs goto irss
IF %catspal%==srs goto srss
IF %catspal%==las goto lssp
IF %catspal%==lss goto lssl
IF %catspal%==ltp goto trackm
IF %catspal%==lfe goto lfel
IF %catspal%==lasc goto lascl
IF %catspal%==asc goto asck
IF %catspal%==awl goto awls
IF %catspal%==gli goto glimp
IF %catspal%==ri goto rii
IF %catspal%==wlani goto wlans
IF %catspal%==rwp goto rwpp
IF %catspal%==bcd goto bcdd
IF %catspal%==ipc goto ipcc
IF %catspal%==la goto lpa
IF %catspal%==dal goto lpaa
IF %catspal%==wao goto waos
IF %catspal%==dwao goto dwaos
IF %catspal%==shutdown goto shutdownn
IF %catspal%==logoff goto logofff
IF %catspal%==cls goto clsa
IF %catspal%==color goto colorrr
IF %catspal%==abort goto abortin
IF %catspal%==dt goto dtt
IF %catspal%==showrd goto cpfddd
IF %catspal%==showdt goto cpfdee
IF %catspal%==expelf goto expelff
IF %catspal%==cpf goto cpftpp
IF %catspal%==mvf goto cpfmfm
IF %catspal%==cp goto cpppp
IF %catspal%==op goto opppp
IF %catspal%==rdpe goto rdpee
IF %catspal%==rdpd goto rdpdd
IF %catspal%==gcpu goto gcpuu
IF %catspal%==guse goto gusee
IF %catspal%==iuse goto iusee
IF %catspal%==showin goto cpippp
IF %catspal%==ebm goto ebmm
IF %catspal%==cmd goto cmdd
IF %catspal%==gpm goto gpmm
IF %catspal%==lf goto findm
IF %catspal%==mkdir goto mkdrium
IF %catspal%==nmapinf goto nmaps
IF %catspal%==hydra goto hydras
IF %catspal%==batchecho goto batchechos
IF %catspal%==lml goto lanmasterlinkk
IF %catspal%==bettercap goto bettercaps
IF %catspal%==portinfo goto portinfos
IF %catspal%==netmask goto netmasks
IF %catspal%==subnet goto netmasks
IF %catspal%==subnetmask goto netmasks
IF %catspal%==ipv4info goto ipainfos
IF %catspal%==lansweep goto lansweepp
IF %catspal%==explorer goto explorerr
IF %catspal%==arptable goto arptablee
IF %catspal%==wr goto wrs
REM IF %catspal%==
echo invalid syntaxis, type "help" or "h" for all options.
goto catspallin
REM help menu is sliced up in divisions.
:help
:intervalMOW
echo [Man o' War]   COMMANDS   [use ctrl + C to escape a function]
echo "lml"        - send message localy to a pc or over a domain
echo "fullhelp"   - show all options at once
echo "shutdown"   - shuts down the windows system
echo "shutlist"   - shut down list of computers with ADDS.
echo "logoff"     - logs off from the windows system
echo "reboot"     - force reboot the windows system
echo "cls"        - clears the screen of the terminal
echo "color"      - set a given colour to the terminal
echo "abort"      - exits the current program
echo "dt"         - shows the current date and time
echo "wr"         - show weather report
echo "dp"         - duplicate Man O' War terminal program
echo "eleval"     - enter errorlevel testing mode
echo "sshchat"    - chat with ssh via chat.shazow.net
echo "md2eval"    - show the MD2 hash value of the program
echo "md4eval"    - show the MD4 hash value of the program
echo "md5eval"    - show the MD5 hash value of the program
echo "sha1eval"   - show the SHA1 hash value of the program
echo "sha256eval" - show the SHA256 hash value of the program
echo "sha384eval" - show the SHA384 hash value of the program
echo "sha512eval" - show the SHA512 hash value of the program
echo "syshealth"  - check the system health with sfc and chkdsk
echo "diskhealth" - check the health of a given disk
IF  %catspal%==mow goto catspallin
:intervalAS
echo [Assembly]
echo "8664"       - x86-64 Assembly NASM for Windows .asm centre
IF  %catspal%==as goto catspallin
:intervalLO
echo [Logging]
echo "gmrtp"      - generate a mass report of the system to a .txt file
echo "la"         - enable program commands activity logging
echo "dal"        - dissable program commands activity logging
echo "wao"        - enable write all outputs to file
echo "dwao"       - disable write all outputs to file
echo "syslog"     - inspect system logs
IF  %catspal%==lo goto catspallin
:intervalWG
echo [Windows GUI utilities]
echo "mmc"        - microsoft management console
echo "mrt"        - windows gui malware scan
echo "msconfig"   - microsoft config gui
echo "taskmgr"    - task manager
echo "regeditor"  - registry editior
echo "sysserv"    - system services
echo "devmgmt"    - device management
echo "eventvi"    - event viewer
echo "gpeditor"   - group policy editor
echo "perfmon"    - preformance monitor
echo "compmgmt"   - computer management
echo "sysinfmgmt" - system information
echo "explorer"   - open folder with explorer
IF  %catspal%==wg goto catspallin
:intervalCS
echo [Custom Notes]
echo "cnf"        - create personal note file in current folder
echo "enf"        - edit personal note file in current folder
echo "dnf"        - delete personal note file in current folder
IF  %catspal%==cs goto catspallin
:intervalDT
echo [Directory and Volumes]
echo "showrd"     - shows root drives
echo "showdt"     - shows directory tree
echo "showin"     - show all installed programsgcc
echo "mkdir"      - makes a new directory
IF  %catspal%==dt goto catspallin
:intervalFL
echo [Files]
echo "execute"    - run a file or program
echo "expelf"     - delete a file
echo "expelfc"    - delete the content of a folder
echo "cleantmp"   - delete the content of temp folder
echo "cpf"        - copy a file
echo "mvf"        - move a file
echo "scf"        - show contents of current folder
echo "lf"         - locate a file
echo "lfe"        - locate files with specific file extension
echo "asc"        - show file extension association
echo "lasc"       - show file associations in system
echo "wat"        - scan and show present file extensions
echo "sfc"        - show content and free space of a folder or drive 
echo "gc"         - show content of a file
echo "ef"         - edit the content of a file
echo "gauntlet"   - scan root drive for unsigned files
echo "mtransmit"  - mass-transmit files from folder a to b
IF  %catspal%==fl goto catspallin
:intervalSH
echo [System and Hardware Information]
echo "biosinf"    - shows bios information
echo "gcpu"       - shows cpu information
echo "motbor"     - show motherboard information
echo "gpuinf"     - show gpu information
echo "gram"       - show ram information
echo "bcd"        - show boot configuration data
echo "sss"        - show system statistics
IF  %catspal%==sh goto catspallin
:intervalBP
echo [battery and powerschemes]
echo "sps"        - show power schemes
echo "dps"        - delete powerscheme
echo "cps"        - create powerscheme
IF  %catspal%==bp goto catspallin
:intervalWL
echo [Windows License]
echo "gli"        - show info about windows license
echo "awl"        - activate a Windows license product key
IF  %catspal%==wl goto catspallin
:intervalPT
echo [Ports]
echo "op"         - open port
echo "cp"         - close port
IF  %catspal%==pt goto catspallin
:intervalRM
echo [Remote Access]
echo "rdpe"       - enable remote desktop logon
echo "rdpd"       - disable remote desktop logon
IF  %catspal%==rm goto catspallin
:intervalNM
echo [network management]
echo "initnmap"   - install nmap
echo "nmap"       - execute nmap commands
echo "expelnmap"  - uninstall nmap
echo "ipc"        - show current sytem IP configuration
echo "wlani"      - show system wlan information
echo "arptable"   - show the adress resolution protocol tables of the system
echo "ipcreset"   - release ip config, renew, flush DNS-cache, re-register DNS.
echo "netinface"  - show current network interfaces
echo "pubip"      - fetch your public ip-adress
echo "myhostnm"   - fetch your external hostname
echo "ipv4"       - change the ipv4 adress, netmask, and dfgw of a network interface
echo "ipv6"       - change the ipv6 adress, netmask, and dfgw of a network interface
echo "mac"        - change the mac adress
echo "dns"        - change the dns server in ipv4 format
echo "dnshex"     - change the dns server in ipv6 format
echo "portinfo"   - shows portnumbers and info
echo "ltp"        - find connection to process link
echo "netmask"    - explains netmasks and info
echo "ipv4info"   - explains IPv4-Adress classes and types
echo "tracert"    - trace ip-adress or domain name route
echo "pingip"     - ping an ip-adress or domain name
echo "geolocate"  - geolocate a public ip-adress
echo "asnispip"   - fetch ASN and ISP info of a public ip-adress
echo "getbgpip"   - fetch BGP info of a public ip-adress
echo "rdaptrack"  - fetch RDAP info of a public ip adress
echo "detectvlan" - fetch VLAN info of network interfaces
echo "getpackets" - fetch all network packets with packetmon to .pcapng file
echo "getippack"  - fetch network packets with packetmon of an ip-adress to .pcapn file
echo "getipport"  - fetch all packets with packetmon with a given port to .pcapng file
echo "portippkt"  - fetch packets of given ip with given port to .pcapng file
echo "lansweep"   - scan the local area network for active ip-adresses with arp and ping
echo "getmacinf"  - fetch info on a mac-adress vendor from the web with curl
echo "privorpub"  - check if an ip-adress is private or public
echo "grt"        - fetch the ip-adress routing tabel on the system
echo "asr"        - add static ipv4 route to the routing tabel
echo "dsr"        - delete static ipv4 route in the routing tabel
echo "asrhex"     - add static ipv6 route to the routing tabel
echo "dsrhex"     - delete static ipv6 route in the routing tabel
IF  %catspal%==nm goto catspallin
:intervalWS
echo [Websites and resolve]
echo "getrevdns"  - get your own IP its reverse DNS
echo "getsh"      - get HTTP site headers
echo "checkrslv"  - check DNS resolve from google DNS
echo "checkhand"  - check TLS/SSL info aka handshake details
echo "checkciph"  - check TLS/SSL handshake and cipher
echo "checkhc"    - inspect HTTP status codes
echo "fetchlinks" - fetch all used URLs from a webpage
IF  %catspal%==ws goto catspallin
:intervalTS
echo [System Services and Tasks]
echo "unveil"     - scan for auto startups in registry and folders 
echo "lss"        - list all system services
echo "las"        - list running system services
echo "srs"        - stop running service
echo "irs"        - start a service
echo "stl"        - show running programs
echo "kt"         - kill a running program
echo "st"         - start a program
IF  %catspal%==ts goto catspallin
:intervalTD
echo [Overall Treat Detection]
echo "badurl"    - show URLs flagged with dangers that are online
echo "badip"     - show IPs flagged with dangers
echo "batav"     - download batch antivirus and run it
IF  %catspal%==td goto catspallin
:intervalSF
echo [System Firewall]
echo "gf"         - shows current firewall rules
echo "ifr"        - inbound firewall rules
echo "ofr"        - outbound firewall rules
echo "gfp"        - show firewall profile info
echo "gcp"        - show current firewall profile
echo "cfr"        - create a firewall rule
echo "dfr"        - delete a firewall rule
IF  %catspal%==sf goto catspallin
:intervalSC
echo [Saved Credentials]
echo "rwp"        - recover wlan passwords
IF  %catspal%==sc goto catspallin
:intervalRW
echo [Windows Registry]
echo "ri"         - registry inspection
IF  %catspal%==rw goto catspallin
:intervalUG
echo [Users and Groups]
echo "guse"       - show users
echo "slg"        - show local groups
echo "iuse"       - show info about specific user
echo "cu"         - create a user
echo "du"         - delete a user
echo "ca"         - create an administrator
echo "clg"        - create local group
echo "dlg"        - delete local group
echo "astg"       - assign user to group
echo "dufg"       - delete user from group
IF  %catspal%==ug goto catspallin
:intervalGP
echo [Group Policys]
echo "udgp"       - update group policys
echo "rsop"       - show RSoP summary data
IF  %catspal%==gp goto catspallin
:intervalTX
echo [CMD and POWERSHELL]
echo "cmd"        - execute custom cmd command
echo "spc"        - send powershell command to host
echo "erp"        - enable WinRM for powershell remoting
echo "derp"       - disable WinRM for powershell remoting
IF  %catspal%==tx goto catspallin
:intervalAD
echo [Active Directory Domain Services - Client Side]
echo "installrsat"- install remote server administration tool for AD/DS management
echo "uninrsat"   - uninstall remote server administration tool for AD/DS management
echo "joindc"     - join a computer to a domain
echo "leavedc"    - remove a computer from a domain
echo "addsgetusr" - list all domain users or inspect a specific user
echo "addsgetgrp" - list all domain groups or inspect a specific group
echo "listorgunit"- list all organisational units in AD/DS
echo "addusrtoou" - create a user in an organisational unit in AD/DS
echo "expusrfrmou"- delete a user from an organisational unit in AD/DS
echo "addgrptoou" - create a group in an organisational unit in AD/DS
echo "expgrpfrmou"- delete a group from an organisational unit in AD/DS
echo "ougroupusrs"- add or remove users from a group in an organisational unit in AD/DS
echo "resusrpass" - reset a domain user's password
echo "disdomusr"  - disable a domain user account
echo "enadomusr"  - enable a domain user account
echo "addcompacc" - create a computer account in an organisational unit in AD/DS
echo "delcompacc" - delete a computer account in AD/DS
echo "fgpoupdate" - force a group policy update on the system
echo "addsrepchk" - check Active Directory replication status
echo "addgpotoou" - add group policy object to organisational unit in AD/DS
echo "editgpo"    - edit group policy object
echo "delgpo"     - delete group policy object
IF  %catspal%==ad goto catspallin
:intervalSX
echo [SDR and Coordinates]
echo "adsb"       - track air-planes with Automatic Dependent Surveillance-Broadcast
echo "getiss"     - get geolocation of international space station
echo "fsc"        - find space-craft names that are in orbit
echo "flaunchp"   - find spacecraft launch platform names
echo "revgeoloc"  - reverse geolocate with latitude and longitude
echo "getnaspic"  - download last epic nasa picture to program folder
IF  %catspal%==sx goto catspallin
:intervalCX
echo [Cheat Sheets]
echo "batchecho"  - tool to implement cheatsheets
echo "cheatsh"    - shows cheat.sh
echo "nmapinf"    - shows nmap commands
echo "hydra"      - shows hydra commands
echo "bettercap"  - shows bettercap commands
IF  %catspal%==cx goto catspallin
:intervalST
echo [Text and Speech]
echo "spke"       - speak english
echo "askquest"   - ask a question
echo "giveadvice" - give a random advice
echo "telljoke"   - tells a random dad joke
IF  %catspal%==st goto catspallin
:intervalIG
echo [Images and GIFs]
echo "findgif"    - finds a gif and shows it in the terminal
IF  %catspal%==ig goto catspallin
:intervalNI
echo [News and information]
echo "hackernews" - shows news for hackers
IF  %catspal%==ni goto catspallin
:intervalMM
echo [Markets and Money]
echo "gct"        - get market currency rates
IF  %catspal%==mm goto catspallin
:intervalFR
echo [Fun and Rickrolls]
echo "initnyan"   - shows nyancat ascii animation
IF  %catspal%==fr goto catspallin
:intervalMG
echo [Multiplayer and Singleplayer Games]
echo "playsnake"  - play snake multiplayer over SSH
echo "arcadegm"   - play various arcade games over SSH
IF  %catspal%==mg goto catspallin
:intervalCC
echo [credits and cooperation]
echo "showcreds"  - shows program credits
IF  %catspal%==cc goto catspallin
echo [PROGRAM FUNCTION COUNT: %functioncounts% functions]
REM loggingsection
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM reconstruct helpmenu segmentated divisions
:batavv
setlocal enabledelayedexpansion
set "BASE=%~dp0"
REM Download URL BATCH ANTIVIRUS
set "URL=https://github.com/anic17/Batch-Antivirus/archive/refs/heads/master.zip"
set "ZIP=%BASE%master.zip"
echo Downloading Batch-Antivirus...
powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL%', '%ZIP%')"
echo Unzipping...
powershell -Command "Expand-Archive -Path '%ZIP%' -DestinationPath '%BASE%' -Force"
echo Deleting ZIP...
del "%ZIP%" /f /q
echo Running BAV.bat...
call "%BASE%Batch-Antivirus-master\BAV.bat"
echo Done.
echo Removing 3rd party framework
rmdir /s /q "%~dp0Batch-Antivirus-master
endlocal
goto catspallin
:FEDAEEDSEcls
cls
goto strangplaceFEDFAaliens
:executee
echo Calling the execution framework...
setlocal
:strangplaceFEDFAaliens
:menu
echo  ______     __  __     ______     ______     __  __     ______   ______    
echo /\  ___\   /\_\_\_\   /\  ___\   /\  ___\   /\ \/\ \   /\__  _\ /\  ___\   
echo \ \  __\   \/_/\_\/_  \ \  __\   \ \ \____  \ \ \_\ \  \/_/\ \/ \ \  __\   
echo  \ \_____\   /\_\/\_\  \ \_____\  \ \_____\  \ \_____\    \ \_\  \ \_____\ 
echo   \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_____/     \/_/   \/_____/ 
echo [Run a Program With or Without Administrator privileges]
echo.
echo "runasadmin"   - Run with Administrator privileges
echo "run"          - Run normally
echo "abort"        - Return to mainframe
echo "cls"          - clear the terminal
echo.
set /p choice="Choose operation e.g. [runasadmin]:
if "%choice%"=="runasadmin" goto run_admin
if "%choice%"=="run" goto run_normal
if "%choice%"=="abort" goto catspallin
if "%choice%"=="cls" goto FEDAEEDSEcls
echo Invalid input for last command prompt
goto menu
:run_admin
set /p file=Enter the full path of the program/file to run as admin e.g. [C:\flappyfile]:
echo Starting with admin...
powershell -command "Start-Process '%file%' -Verb RunAs"
goto end
:run_normal
set /p file=Enter the full path of the program/file to run normally e.g. [C:\flappyfile]:
echo Starting normally...
start "" "%file%"
goto end
:end
echo.
echo Done.
goto catspallin
:getnaspicc
cd /d "%~dp0"
echo Checking jq.exe...
if not exist "%~dp0jq.exe" (
    echo jq.exe not found. Downloading...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe' -OutFile 'jq.exe'"
)
echo Getting NASA EPIC latest image information...
curl -s "https://epic.gsfc.nasa.gov/api/natural" > epic.json
for /f "usebackq delims=" %%A in (`jq -r ".[0].date" epic.json`) do set DATE=%%A
for /f "usebackq delims=" %%A in (`jq -r ".[0].image" epic.json`) do set IMG=%%A
set DATE2=%DATE:~0,4%/%DATE:~5,2%/%DATE:~8,2%
set URL=https://epic.gsfc.nasa.gov/archive/natural/%DATE2%/png/%IMG%.png
echo Downloading latest NASA EPIC Earth image...
curl -L -o "%~dp0latest_earth.png" "%URL%"
echo Cleaning up...
del /f /q jq.exe >nul 2>&1
del /f /q epic.json >nul 2>&1
echo Done! Image saved as:
echo %~dp0latest_earth.png
echo Returning to mainframe...
endlocal
goto catspallin
REM lanmasterlink framework
:clslanmasterlink
cls
goto noneedforanotherlocalFFED
:lanmasterlinkk
setlocal
:noneedforanotherlocalFFED
:mainmenuEFDDEA
echo     __                                 __            ___       __  
echo    / /___ _____  ____ ___  ____ ______/ /____  _____/ ^(_^)___  / /__
echo   / / __ `/ __ \/ __ `__ \/ __ `/ ___/ __/ _ \/ ___/ / / __ \/ //_/
echo  / / /_/ / / / / / / / / / /_/ ^(__  ^) /_/  __/ /  / / / / / / ,^<   
echo /_/\__,_/_/ /_/_/ /_/ /_/\__,_/____/\__/\___/_/  /_/_/_/ /_/_/^|_^|
echo [MESSAGE SENDER FRAMEWORK] because linking is a social matter.
echo "sndmsg"      - Send a message
echo "sndbrdcst"   - Broadcast a message
echo "sndhelp"     - Explain options
echo "abort"       - Return to mainframe
echo "cls"         - clear the terminal
set /p choice=Enter the valid command syntaxis e.g. [sndbrdcst]:
if "%choice%"=="sndmsg" goto msgg
if "%choice%"=="sndbrdcst" goto broadcast
if "%choice%"=="sndhelp" goto helpilaxuir
if "%choice%"=="abort" endlocal & goto catspallin
if "%choice%"=="cls" goto clslanmasterlink
echo Warning^! invalid syntaxis for last command prompt.
goto mainmenuEFDDEA
:msgg
echo [SEND A MESSAGE]
echo Type "abort" at any prompt to return to menu.
echo Hint: To fetch the pcname type "cmd" and after "ping -a ^<ipadress^>" in the main menu.
set /p target=Enter target e.g. [username], [session ID], [/server:PCNAME], or [DOMAIN\\Alice]:
if /i "%target%"=="abort" goto mainmenuEFDDEA
set /p message=Enter your message: 
if /i "%message%"=="abort" goto mainmenuEFDDEA
msg %target% %message%
IF %errorlevel%==1 (
   echo Warning! The program failed to send the message, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded to send the message, compatibility stable.
)
echo.
echo Message sent to %target%.
goto mainmenuEFDDEA
:broadcast
echo [BROADCAST A MESSAGE]
echo This will send a message to ALL sessions.
echo Type "abort" to return to menu.
set /p message=Enter your broadcast message e.g. [Hello World]: 
if /i "%message%"=="abort" goto mainmenuEFDDEA
msg * %message%
IF %errorlevel%==1 (
   echo Warning! The program failed to send broadcast, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded to send broadcast, compatibility stable.
)
echo.
echo Broadcast sent to all sessions.
goto mainmenuEFDDEA
:helpilaxuir
echo [HELP MENU]
echo lanmasterlink lets you send a msg over the network to:
echo users, sessions, or computers.
echo.
echo Type "abort" at any prompt to return to menu.
echo Or use "cls" to clear  the terminal.
echo.
echo because linking is a social matter.
echo.
goto mainmenuEFDDEA

:inputclsacadfldtrst
cls
:explorerr
echo Calling explorer navigation framework...
setlocal
:wowlistgivendeamnacad
SET /P tergtfldopn=Enter the folder to open e.g. [temp] or [appdata] for list type [list]:
IF /I "%tergtfldopn%"=="temp"        set "mastertargetgamefacade=%temp%"
IF /I "%tergtfldopn%"=="appdata"     set "mastertargetgamefacade=%appdata%"
IF /I "%tergtfldopn%"=="localappdata" set "mastertargetgamefacade=%localappdata%"
IF /I "%tergtfldopn%"=="userprofile" set "mastertargetgamefacade=%userprofile%"
IF /I "%tergtfldopn%"=="homepath"    set "mastertargetgamefacade=%homepath%"
IF /I "%tergtfldopn%"=="systemroot"  set "mastertargetgamefacade=%systemroot%"
IF /I "%tergtfldopn%"=="windir"      set "mastertargetgamefacade=%windir%"
IF /I "%tergtfldopn%"=="programfiles" set "mastertargetgamefacade=%programfiles%"
IF /I "%tergtfldopn%"=="programfiles(x86)" set "mastertargetgamefacade=%programfiles(x86)%"
IF /I "%tergtfldopn%"=="public"      set "mastertargetgamefacade=%public%"
IF /I "%tergtfldopn%"=="commonprogramfiles" set "mastertargetgamefacade=%commonprogramfiles%"
IF /I "%tergtfldopn%"=="allusersprofile" set "mastertargetgamefacade=%allusersprofile%"
IF /I "%tergtfldopn%"=="systemdrive" set "mastertargetgamefacade=%systemdrive%"
IF /I "%tergtfldopn%"=="comspec"     set "mastertargetgamefacade=%comspec%
IF /I "%tergtfldopn%"=="list" goto listingsecad
IF /I "%tergtfldopn%"=="cls" goto inputclsacadfldtrst
goto proceedoperatiumacad
:listingsecad
echo [Available Folder Keywords]
echo temp           - User TEMP folder (%temp%)
echo appdata        - Roaming AppData (%appdata%)
echo localappdata   - Local AppData (%localappdata%)
echo userprofile    - User profile folder (%userprofile%)
echo homepath       - Home path (%homepath%)
echo systemroot     - Windows system root (%systemroot%)
echo windir         - Windows directory (%windir%)
echo programfiles   - Program Files (%programfiles%)
echo programfiles(x86) - Program Files (x86) (%programfiles(x86)%)
echo public         - Public user folder (%public%)
echo commonprogramfiles - Common Program Files (%commonprogramfiles%)
echo allusersprofile - All Users profile (%allusersprofile%)
echo systemdrive    - System drive (%systemdrive%)
echo comspec        - Command interpreter (cmd.exe) (%comspec%)
goto wowlistgivendeamnacad
:proceedoperatiumacad
explorer "%mastertargetgamefacade%"
echo Warning! the errorlevel of this function must be checked by the operator.
echo Returning to mainframe...
endlocal
goto catspallin
:arptablee
echo Calling arp tables...
arp -a
IF %errorlevel%==1 (
   echo Warning! The program failed to get the arp tables, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded to get the arp tables, compatibility stable.
)
echo Called arp tables, returning to mainframe.
goto catspallin
:cleantmpp
setlocal
echo Cleaning TEMP folder: %temp%
del /q /f "%temp%\*.*"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
for /d %%i in ("%temp%\*") do rd /s /q "%%i"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Program finished process to clean temp folder...
endlocal
goto catspallin
:expelfcc
setlocal
SET /P TARGET=Enter the target folder to delete the content of e.g. [C:\Path\To\Folder]:
echo Cleaning folder: %TARGET%
del /q "%TARGET%\*.*"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
for /d %%i in ("%TARGET%\*") do rd /s /q "%%i"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo The program finished the process to clean the folder selected...
endlocal
goto catspallin
:gmrtpp
echo Generating system report to file...
setlocal EnableDelayedExpansion
:: Output file in the script directory with timestamp
set "out=%~dp0system_report_%computername%_%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%.txt"
set "out=%out: =0%"  :: remove spaces
echo ======================================================
echo   FULL SYSTEM REPORT - %COMPUTERNAME%
echo   Generated: %date% %time%
echo ======================================================
echo.
echo Output will be saved to: "%out%"
echo.
echo Gathering basic system info...
systeminfo >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting CPU info...
wmic cpu get Name,NumberOfCores,NumberOfLogicalProcessors,MaxClockSpeed /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting GPU info...
wmic path win32_videocontroller get Name,DriverVersion,AdapterRAM /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting RAM modules...
wmic memorychip get BankLabel,Capacity,DeviceLocator,Manufacturer,PartNumber,Speed /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting BIOS info...
wmic bios get Manufacturer,Name,Version,SerialNumber,ReleaseDate /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting motherboard info...
wmic baseboard get Manufacturer,Product,SerialNumber,Version /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting network interfaces...
wmic nic get Name,MACAddress,Speed,NetEnabled /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting IP configuration...
ipconfig /all >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Collecting routing table...
route print >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting disk drives...
wmic diskdrive get Model,InterfaceType,SerialNumber,Size,Status /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting logical volumes...
wmic logicaldisk get Name,DriveType,FileSystem,FreeSpace,Size,VolumeName /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Checking storage pools...
powershell -command "Get-PhysicalDisk; Get-VirtualDisk; Get-StoragePool" >> "%out%" 2>nul
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Listing running processes...
tasklist /v >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Listing all services...
sc query type= service state= all >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Detecting startup programs...
wmic startup get Caption,Command,User /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Listing installed drivers...
driverquery /v >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Listing installed hotfixes / patches...
wmic qfe list full /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Listing local users...
wmic useraccount get Name,SID,Status /format:list >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Listing local groups...
net localgroup >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Saving environment variables...
set >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Saving power settings...
powercfg /query >> "%out%"
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo Collecting recent system events...
powershell -command "Get-EventLog -LogName System -Newest 50" >> "%out%" 2>nul
IF %errorlevel%==1 (
   echo Warning! The program failed partially, comaptibility endangered.
) ELSE (
   echo Success! The program succeeded partially, compatibility stable.
)
echo Done.
echo.
echo ======================================================
echo Report generation complete!
echo Output saved to:
echo "%out%"
echo.
echo Showing report now (press Q to quit):
more "%out%"
endlocal
goto catspallin
:section
echo. >> "%out%"
echo ====================================================== >> "%out%"
echo   %~1 >> "%out%"
echo ====================================================== >> "%out%"
echo. >> "%out%"
endlocal
goto catspallin

:mainhelpmenudevinit
echo  __    __     ______     __     __    
echo /\ "-./  \   /\  __ \   /\ \  _ \ \   
echo \ \ \-./\ \  \ \ \/\ \  \ \ \/ ".\ \  
echo  \ \_\ \ \_\  \ \_____\  \ \__/".~\_\ 
echo   \/_/  \/_/   \/_____/   \/_/   \/_/ %vrsion%
echo [Man o' War]                      
echo "mow"   -    man o war main commands 
echo "as"    -    x8664 assembly commands
echo "lo"    -    logs and logging commands
echo "wg"    -    windows gui commands
echo "cs"    -    custom note file commands
echo "dt"    -    directory and volume commands
echo "fl"    -    file system commands 
echo "sh"    -    system and hardware commands
echo "bp"    -    battery and powerscheme commands
echo "wl"    -    windows license commands
echo "pt"    -    network port commands
echo "rm"    -    remote access commands
echo "nm"    -    network management commands
echo "ws"    -    website and resolve commands   
echo "ts"    -    system services and task commands
echo "td"    -    threath detection commands
echo "sf"    -    system firewall commands
echo "sc"    -    saved credential commands
echo "rw"    -    windows registry commands
echo "ug"    -    user and localgroup commands
echo "gp"    -    group policy commands
echo "tx"    -    cmd and powershell commands
echo "ad"    -    adds clientside commands
echo "sx"    -    sdr and coordination commands
echo "cx"    -    cheat sheet commands
echo "st"    -    text and speech commands
echo "ig"    -    immages and gif commands
echo "ni"    -    news and  info commands
echo "mm"    -    market and money commands
echo "fr"    -    fun and rickroll commands
echo "mg"    -    mp and sp game commands
echo "cc"    -    credits and cooperations
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:biosinfinit
echo Calling BIOS information
wmic bios get biosversion,manufacturer,serialnumber
IF %errorlevel%==1 (
   echo Warning! The program failed to get any BIOS information.
) ELSE (
   echo Success! The program succeeded get BIOS information..
)
goto catspallin
:gpuinfinit
echo Calling GPU information...
wmic path win32_videocontroller get name
wmic path win32_videocontroller get adapterram
IF %errorlevel%==1 (
   echo Warning! The program failed to get any GPU information.
) ELSE (
   echo Success! The program succeeded get GPU information..
)
goto catspallin
:graminit
echo Calling ram information...
wmic MEMORYCHIP list full
IF %errorlevel%==1 (
   echo Warning! The program failed to get any ram information.
) ELSE (
   echo Success! The program succeeded get ram information..
)
goto catspallin
:logicbrd
echo Calling motherboard information...
wmic baseboard get product,manufacturer,serialnumber
IF %errorlevel%==1 (
   echo Warning! The program failed to get any motherboard information.
) ELSE (
   echo Success! The program succeeded get motherboard information.
)
goto catspallin
REM 8664 centre [][][]
:8993301
setlocal
goto inboundoperationlinkzeroFE
echo.
:asms
echo.
echo [x86-64 Assembly centre] COMMANDS:
echo.
echo "help"            - explains these functions
echo "assemsyntax"     - learn the x86-64 intel assembly syntax
echo "generalregdefine"- explain the general purpose registers
echo "segregdefine"    - explain the segment registers
echo "ipdefine         - explain the instruction pointer
echo "flagregdefine"   - explain flags registers
echo "instformdefine"  - explain instruction format 
echo "datmovdefine"    - explain data movement instructions
echo "aritinstdefine"  - explain arithmetic instructions
echo "logbitinstdefine"- explain logical and bit-wise insctructions
echo "ctrlflowdefine"  - explain controll flow
echo "comparisondefine"- explain comparison
echo "stckfrmcondefine"- explain stack frame convention
echo "memadrdefine"    - explain memory adressing
echo "derectdefine"    - explain directives (assembler-specific)
echo "sysapidefine"    - explain system calls, API calls
echo "flagconcddefine" - explain flags and condition codes
echo "simdextdefine"   - explain SIMD and extensions
echo "comexsklt"       - explain comments and show example skeleton
echo "cls"             - clear terminal
echo "abort"           - abort operations and return to menu
echo "initnasm"        - install NASM in C:\Program Files
echo "initmingw"       - install MinGW in C:\Program Files
echo "nasmcompat"      - check NASM installation and version
echo "mingwcompat"     - check MinGW installation and version
echo.
echo "compatilize"     - use Assembly + CRT (GCC-Linked)
echo                     This option Uses NASM and MinGW to assemble and link
echo                     an x86-64 NASM .asm file into an .exe
echo                     [contains C runtime code]
echo                     [GCC default libraries and startup files]
echo.
echo "purecompatilize" - Use Assembly (No CRT) / Bare-Metal PE
echo                     This option Uses NASM and MinGW to assemble and link
echo                     an x86-64 NASM .asm file into an .exe
echo                     [contains no C runtime code]
echo                              [no MSVCRT]
echo                              [no UCRT]
echo                              [no libgcc]
echo                              [no GCC startup files [crt2.o, crtbegin.o, etc.]
echo                              [no Default libraries]
echo                              [no injected CRT code]
echo.
goto insanedforallclstrustall
:clssafepallFFEFEX
cls 
:insanedforallclstrustall
:inboundoperationlinkzeroFE
SET /P ASSEMBLEOPERATION=[Assembly Centre Operation], type "asm" for commands^^^_`^>
IF %ASSEMBLEOPERATION%==assemsyntax goto assemsyntaxis
IF %ASSEMBLEOPERATION%==ipdefine goto ipdefined
IF %ASSEMBLEOPERATION%==segregdefine goto segregdefinee
IF %ASSEMBLEOPERATION%==generalregdefine goto generalregdefinee
IF %ASSEMBLEOPERATION%==help goto helpinfomenFE
IF %ASSEMBLEOPERATION%==mingwcompat goto mingwcompatt
IF %ASSEMBLEOPERATION%==nasmcompat goto nasmcompatt
IF %ASSEMBLEOPERATION%==purecompatilize goto operationXXFFDDEE
IF %ASSEMBLEOPERATION%==initnasm goto operationFFEDAB
IF %ASSEMBLEOPERATION%==checkram goto checkramasm
IF %ASSEMBLEOPERATION%==initmingw goto operationFFEDDB
IF %ASSEMBLEOPERATION%==compatilize goto operationRXTX00FE
IF %ASSEMBLEOPERATION%==abort endlocal & echo Abort given as parameter, returning to mainframe. & goto catspallin
IF %ASSEMBLEOPERATION%==cls goto clssafepallFFEFEX
IF %ASSEMBLEOPERATION%==flagregdefine goto flagregdefinee
IF %ASSEMBLEOPERATION%==instformdefine goto instformdefinee
IF %ASSEMBLEOPERATION%==datmovdefine goto datmovdefinee
IF %ASSEMBLEOPERATION%==aritinstdefine goto aritinstdefinee
IF %ASSEMBLEOPERATION%==logbitinstdefine goto logbitinstdefinee
IF %ASSEMBLEOPERATION%==ctrlflowdefine goto ctrlflowdefinee
IF %ASSEMBLEOPERATION%==comparisondefine goto comparisondefinee
IF %ASSEMBLEOPERATION%==stckfrmcondefine goto stckfrmcondefinee
IF %ASSEMBLEOPERATION%==memadrdefine goto memadrdefinee
IF %ASSEMBLEOPERATION%==derectdefine goto derectdefinee
IF %ASSEMBLEOPERATION%==asm goto asms
IF %ASSEMBLEOPERATION%==comexsklt goto comexskltt
IF %ASSEMBLEOPERATION%==simdextdefine goto simdextdefinee
IF %ASSEMBLEOPERATION%==flagconcddefine goto flagconcddefinee
IF %ASSEMBLEOPERATION%==sysapidefine goto sysapidefinee
echo Warning invalid input.
goto 8993301
:comexskltt
echo 14. [Comments]
echo   - Intel syntax uses ^"^;^" for comments
echo   - Example: MOV RAX, RBX ; copy RBX into RAX
echo.
echo.
echo 15. [Example Program Skeleton]
echo   section .data
echo     msg db ^"Hello, world^!^"^,^0
echo   section .text
echo     global main
echo   main:
echo     ; your code here
echo.
goto 8993301
:simdextdefinee
echo 13. [SIMD and Extensions]
echo   - SSE registers: XMM0-XMM15 (128-bit)
echo   - AVX registers: YMM0-YMM15 (256-bit)
echo   - Instructions: MOVDQA (move aligned), ADDPS (add packed single-precision floats), MULPD (multiply packed doubles)
echo   - SIMD = Single Instruction, Multiple Data: perform operations on multiple values at once
echo   - Used for multimedia, math, cryptography, and performance optimization
echo.
goto 8993301
:flagconcddefinee
echo 12. [Flags and Condition Codes]
echo   - Zero Flag (ZF): set if result == 0
echo   - Sign Flag (SF): set if result is negative
echo   - Carry Flag (CF): set if unsigned overflow/borrow occurs
echo   - Overflow Flag (OF): set if signed overflow occurs
echo   - Used by conditional jumps (JE, JNE, JG, JL, etc.)
echo.
fgoto 8993301
:sysapidefinee
echo 11. [System Calls / API Calls]
echo   - In Windows, you call WinAPI functions via CALL after setting registers
echo   - Example: CALL GetStdHandle from kernel32.dll
echo   - Linking requires kernel32.lib, user32.lib, etc.
echo   - These libraries provide access to OS services like console I/O, memory, and windows.
echo.
goto 8993301
:derectdefinee
echo 10. [Directives (Assembler-specific)]
echo   - .data: define data section
echo   - .code: define code section
echo   - DB, DW, DD, DQ: define bytes/words/dwords/qwords
echo   - ALIGN: align data or code to boundaries
echo   - EQU: define constants
echo   - LABEL: define labels for code or data
echo.
goto 8993301
:memadrdefinee
echo === X86-64 Memory Addressing ===
echo Syntax: [base + index*scale + displacement]
echo - This is the general form for addressing memory in Intel syntax.
echo - "base" is a register holding a starting address.
echo - "index" is a register used for array indexing.
echo - "scale" is a multiplier (1, 2, 4, or 8) applied to the index.
echo - "displacement" is a constant offset added to the address.
echo.
echo Example:
echo   MOV RAX, [RBX+RCX*4+16]
echo   ; Loads into RAX the value at memory address:
echo   ; (contents of RBX) + (contents of RCX * 4) + 16
echo.
echo Scale Factors:
echo - Allowed values are 1, 2, 4, or 8.
echo - These correspond to element sizes in arrays:
echo   * 1 = byte array
echo   * 2 = word array (16-bit)
echo   * 4 = dword array (32-bit)
echo   * 8 = qword array (64-bit)
echo.
echo === Notes ===
echo - Any of base, index, or displacement can be omitted.
echo   Example: MOV RAX, [RBX]        ; just base
echo            MOV RAX, [RCX*8]      ; just index*scale
echo            MOV RAX, [RDX+32]     ; base + displacement
echo - This flexible syntax makes it easy to access arrays, structures, and stack variables.
echo - In 64-bit mode, addresses are 64-bit, but scale factors are limited to 1, 2, 4, or 8.
echo.
goto 8993301
:stckfrmcondefinee
echo === Windows x64 ABI Stack Frame Conventions ===
echo.
echo Function Prologue - Standard setup at the start of a function.
echo   PUSH RBP        ; save old base pointer
echo   MOV RBP, RSP    ; set new base pointer to current stack pointer
echo   SUB RSP, N      ; reserve space for local variables (N must be multiple of 16 for alignment)
echo.
echo Shadow Space - 32 bytes reserved on the stack by the caller.
echo   - Always allocated before a CALL instruction.
echo   - Provides space for the first four arguments (RCX, RDX, R8, R9) if callee needs to spill them.
echo   - Ensures stack alignment for function calls.
echo.
echo Parameters - Passed in registers for the first four integer/pointer arguments.
echo   RCX - 1st argument
echo   RDX - 2nd argument
echo   R8  - 3rd argument
echo   R9  - 4th argument
echo   Additional arguments are passed on the stack after the shadow space.
echo.
echo Return Value - Placed in RAX.
echo   Example: MOV RAX, result   ; function returns "result" in RAX
echo.
echo === Notes ===
echo - Stack must remain 16-byte aligned at CALL instructions.
echo - Callee-saved registers (RBX, RBP, RDI, RSI, R12-R15) must be preserved if used.
echo - Caller-saved registers (RAX, RCX, RDX, R8-R11) can be freely modified by the callee.
echo - This convention ensures interoperability between all Windows x64 code, regardless of language or compiler.
echo.
goto 8993301
:comparisondefinee
echo === X86-64 Comparison Instructions ===
echo.
echo CMP - Compares two operands by subtracting source from destination.
echo   - The result is discarded, but flags in RFLAGS are updated.
echo   - Commonly used before conditional jumps.
echo   Example: CMP RAX, RBX   ; sets flags based on RAX - RBX
echo     JE equalLabel         ; jump if RAX == RBX (Zero Flag set)
echo     JG greaterLabel       ; jump if RAX > RBX (signed comparison)
echo.
echo TEST - Performs bitwise AND between operands.
echo   - The result is discarded, but flags in RFLAGS are updated.
echo   - Often used to check if a register is zero or if certain bits are set.
echo   Example: TEST RCX, RCX  ; sets Zero Flag if RCX == 0
echo     JZ zeroLabel          ; jump if Zero Flag set (RCX == 0)
echo   Example: TEST RAX, 1    ; check if least significant bit of RAX is set
echo.
echo === Notes ===
echo - CMP is for arithmetic comparisons (greater, less, equal).
echo - TEST is for bitwise checks (zero, specific bits).
echo - Both instructions do not store results, they only affect flags.
echo - Conditional jumps (JE, JNE, JG, JL, etc.) rely on these flags.
echo.
goto 8993301
:ctrlflowdefinee
echo === X86-64 Control Flow Instructions ===
echo.
echo JMP - Unconditional jump. Transfers execution to the specified label or address.
echo   Example: JMP start   ; execution continues at label "start"
echo.
echo CALL - Calls a procedure. Pushes return address onto the stack, then jumps to target.
echo   Example: CALL myFunc ; jump to "myFunc", return address saved on stack
echo RET  - Returns from procedure. Pops return address from stack and resumes execution.
echo   Example: RET         ; return to caller
echo.
echo Conditional Jumps - Branch based on flags in RFLAGS after a CMP or TEST instruction.
echo   JE  - Jump if Equal (Zero Flag set).
echo   JNE - Jump if Not Equal (Zero Flag clear).
echo   JG  - Jump if Greater (signed comparison).
echo   JL  - Jump if Less (signed comparison).
echo   JGE - Jump if Greater or Equal.
echo   JLE - Jump if Less or Equal.
echo   Example: CMP RAX, RBX followed by JE equalLabel
echo.
echo LOOP - Decrements RCX and jumps to label if RCX != 0.
echo   Example: MOV RCX, 5
echo            loopLabel:
echo              ; do work
echo              LOOP loopLabel   ; repeat until RCX reaches 0
echo.
echo === Notes ===
echo - Control flow changes how instructions execute, enabling loops, branches, and function calls.
echo - JMP is unconditional, while conditional jumps depend on flags set by CMP/TEST.
echo - CALL/RET manage function calls using the stack.
echo - LOOP is a compact way to repeat code using RCX as a counter.
echo.
goto 8993301
:logbitinstdefinee
echo === X86-64 Logical and Bitwise Instructions ===
echo.
echo AND - Performs bitwise AND between source and destination, result stored in destination.
echo   Example: AND RAX, RBX   ; RAX = RAX AND RBX
echo.
echo OR - Performs bitwise OR between source and destination, result stored in destination.
echo   Example: OR RCX, 1      ; RCX = RCX OR 1
echo.
echo XOR - Performs bitwise exclusive OR between source and destination, result stored in destination.
echo   Example: XOR RDX, RDX   ; clears RDX (any register XOR itself = 0)
echo.
echo NOT - Performs bitwise NOT (inverts all bits) on the destination operand.
echo   Example: NOT RAX        ; RAX = bitwise complement of RAX
echo.
echo SHL - Shift Left. Shifts bits in destination left by count, filling with zeros.
echo   Example: SHL RAX, 1     ; multiply RAX by 2
echo.
echo SHR - Shift Right. Shifts bits in destination right by count, filling with zeros.
echo   Example: SHR RBX, 1     ; divide RBX by 2 (unsigned)
echo.
echo ROL - Rotate Left. Rotates bits in destination left by count, bits shifted out re-enter on the right.
echo   Example: ROL RCX, 8     ; rotate RCX left by 8 bits
echo.
echo ROR - Rotate Right. Rotates bits in destination right by count, bits shifted out re-enter on the left.
echo   Example: ROR RDX, 4     ; rotate RDX right by 4 bits
echo.
echo TEST - Performs bitwise AND between operands, updates flags, but discards the result.
echo   Example: TEST RAX, RAX  ; sets Zero Flag if RAX == 0
echo   Note: TEST is often used before conditional jumps to check if a register is zero or has certain bits set.
echo.
echo === Notes ===
echo - All logical and bitwise instructions update flags in RFLAGS (Zero, Sign, Carry, Overflow depending on operation).
echo - AND, OR, XOR are used for masking, setting, or clearing bits.
echo - NOT is unary (one operand) and simply flips all bits.
echo - SHL/SHR are used for fast multiplication/division by powers of two.
echo - ROL/ROR are useful in cryptography, hashing, and bit manipulation.
echo - TEST is a "silent AND": it only affects flags, not registers.
echo.
goto 8993301
:aritinstdefinee
echo === X86-64 Arithmetic Instructions ===
echo.
echo ADD - Adds source to destination and stores result in destination.
echo   Example: ADD RAX, 5   ; RAX = RAX + 5
echo.
echo SUB - Subtracts source from destination and stores result in destination.
echo   Example: SUB RBX, RAX ; RBX = RBX - RAX
echo.
echo MUL - Unsigned multiply. Multiplies RAX by source, result in RDX:RAX.
echo   Example: MUL RCX      ; RAX * RCX -> RDX:RAX
echo.
echo IMUL - Signed multiply. Works like MUL but for signed integers.
echo   Example: IMUL RAX, RBX ; RAX = RAX * RBX (signed)
echo.
echo DIV - Unsigned divide. Divides RDX:RAX by source, quotient in RAX, remainder in RDX.
echo   Example: DIV RCX      ; (RDX:RAX) / RCX -> RAX quotient, RDX remainder
echo.
echo IDIV - Signed divide. Works like DIV but for signed integers.
echo   Example: IDIV RBX     ; (RDX:RAX) / RBX -> RAX quotient, RDX remainder
echo.
echo INC - Increment. Adds 1 to destination.
echo   Example: INC RCX      ; RCX = RCX + 1
echo.
echo DEC - Decrement. Subtracts 1 from destination.
echo   Example: DEC RDX      ; RDX = RDX - 1
echo.
echo === Notes ===
echo - Arithmetic instructions update flags in RFLAGS (Zero, Sign, Carry, Overflow).
echo - MUL/DIV use implicit registers (RAX, RDX) for results.
echo - IMUL has multiple forms: one-operand, two-operand, and three-operand.
echo - INC/DEC are shorthand for adding or subtracting 1.
echo.
goto 8993301
:datmovdefinee
echo === X86-64 Data Movement Instructions ===
echo.
echo MOV - Transfers data between registers, memory, or immediate values.
echo   Example: MOV RAX, RBX   ; copy RBX into RAX
echo   Example: MOV RCX, 10    ; load constant 10 into RCX
echo   Example: MOV RDX, [RAX] ; load value from memory at address in RAX into RDX
echo.
echo PUSH - Places a value onto the stack (decrements RSP, stores value).
echo   Example: PUSH RAX       ; push RAX onto the stack
echo.
echo POP  - Removes a value from the stack (loads from [RSP], increments RSP).
echo   Example: POP RBX        ; pop top of stack into RBX
echo.
echo LEA - Load Effective Address. Calculates an address expression and loads it into a register.
echo   Example: LEA RAX, [RBX+RCX*4+16] ; compute address and put it in RAX
echo   Note: LEA does not access memory, it only computes the address.
echo.
echo === Notes ===
echo - MOV is the most common instruction for copying or initializing values.
echo - PUSH/POP are essential for saving registers across function calls and managing local variables.
echo - LEA is powerful for pointer arithmetic, array indexing, and address calculations.
echo - Together, these instructions form the backbone of data handling in assembly.
echo.
goto 8993301
:instformdefinee
echo === X86-64 Instruction Format (Intel Syntax) ===
echo.
echo Intel syntax uses the form: mnemonic destination, source
echo - The mnemonic is the operation (e.g. MOV, ADD, SUB, CMP).
echo - The destination is where the result will be stored.
echo - The source is the value or register being used.
echo.
echo Example:
echo   MOV RAX, RBX   ; copies the contents of RBX into RAX
echo.
echo === Key Points ===
echo - Order matters: MOV RAX, RBX means RAX = RBX, not the other way around.
echo - Operands can be registers, memory addresses, or immediate values.
echo - Memory operands use brackets: MOV RAX, [RBX] loads from memory at address in RBX.
echo - Immediate values are constants: MOV RCX, 10 loads the number 10 into RCX.
echo - Comments start with a semicolon ; and are ignored by the assembler.
echo.
echo === Examples ===
echo ADD RAX, 5      ; add 5 to RAX
echo SUB RBX, RAX    ; subtract RAX from RBX
echo CMP RCX, RDX    ; compare RCX and RDX, sets flags for conditional jumps
echo JMP label       ; jump to a label unconditionally
echo CALL function   ; call a function (push RIP, jump to target)
echo RET             ; return from function (pop RIP)
echo.
echo === Summary ===
echo Instruction format is always: operation destination, source
echo This makes Intel syntax intuitive: read it as "do operation on source, put result in destination".
goto 8993301
:flagregdefinee
echo [The Flags register]
echo - Definition: The Flags register is a special status register that records the results of operations and controls CPU behavior.
echo   It’s central to how conditional jumps, arithmetic, and system control work.
echo   The Flags register (RFLAGS) is the CPU’s “status board.” It tells you if an operation
echo   overflowed, produced zero, was negative, or carried out.
echo   It also controls system features like   interrupts and debugging.
echo   Without it, conditional execution and system control wouldn’t be possible.
echo - In x86‑64, the register is 64 bits wide and known as RFLAGS.
echo - The lower 32 bits EFLAGS (in 32‑bit mode).
echo - The lower 16 bits were called FLAGS (in 16‑bit mode).
echo - Only about the first 21 bits are defined; the rest are reserved.
echo.
echo [Key Flags (Bits in RFLAGS)]
echo [BIT]    [NAME]                   [MEANING]
echo BIT 0    -   CF  Carry Flag       - Set if arithmetic produced a carry/borrow (unsigned overflow).
echo BIT 2    -   PF  Parity Flag        - Set if the low byte of result has even parity.
echo BIT 4    -   AF  Auxiliary Carry    - Set if carry/borrow occurred between bit 3 and 4 (used in BCD math).
echo BIT 6    -   ZF  Zero flag           - Set if result of operation is zero.
echo BIT 7    -   SF  Sign Flag           - Set if result is negative (most significant bit = 1).
echo BIT 8    -   TF  Trap Flag             - Enables single‑step debugging (CPU generates debug exception after each instruction).
echo BIT 9    -   IF  Interrupt Enable flag   - Controls whether maskable interrupts are recognized.
echo BIT 10   -   DF  Direction Flag       - Controls string operations: 0 = increment, 1 = decrement.
echo BIT 11   -   OF  Overflow Flag         - Set if signed arithmetic overflow occurred.
echo BIT 12-13-   IOPL  I/O Privilege Level  - Defines privilege level for I/O instructions.
echo BIT 14   -   NT  Nested Task           - Used in task switching (legacy).
echo BIT 16   -   RF  Resume Flag         - Controls response to debug exceptions.
echo BIT 17   -   VM  Virtual 8086 Mode     - Enables virtual 8086 mode.
echo BIT 18   -   AC  Alignment Check         - Enables alignment checking for memory references.
echo BIT 19   -   VIF  Virtual Interrupt Flag   - Virtual version of IF.
echo BIT 20   -   VIP  Virtual Interrupt Pending - Indicates pending virtual interrupt.
echo BIT 21   -   ID  ID Flag          - Allows CPUID instruction execution.
echo.
echo - When you run an arithmetic or logical instruction (ADD, SUB, CMP, TEST, etc.)
echo   the processor updates certain bits in RFLAGS to reflect the result of that operation.
echo - Example: [ADD RAX, RBX] if the sum is zero, the Zero Flag (ZF) is set. If the sum overflowed, the Overflow Flag (OF) is set.
goto 8993301
:ipdefined
echo [the instruction pointer]
echo - Definition: On x86 processors, the instruction pointer is called IP in 16‑bit mode, EIP in 32‑bit mode, and RIP in 64‑bit mode
echo - Role: It tells the CPU where in memory the next instruction is located.
echo   After each instruction is fetched, the pointer is updated to the address of the following instruction.
echo - Control Transfer: Instructions like jmp, call, ret, and conditional jumps overwrite
echo   the instruction pointer with a new value, changing the flow of execution.
echo.
goto 8993301
:segregdefinee
echo === [X86-64 Segment Registers] ===
echo CS - Code Segment. Holds the segment selector for the currently executing code. In 64-bit mode, CS is mostly fixed and used to determine privilege level (ring 0 vs ring 3).
echo DS - Data Segment. Historically used for general data access. In 64-bit mode, DS is largely ignored; addressing uses flat memory model.
echo ES - Extra Segment. Historically used for string operations and additional data. In 64-bit mode, ES is also ignored in most cases.
echo FS - Segment register often used for thread-specific data. On Windows x64, FS points to the Thread Environment Block (TEB).
echo GS - Segment register often used for system-specific data. On Windows x64, GS points to kernel structures or per-CPU data.
echo SS - Stack Segment. Historically used to define the stack’s memory segment. In 64-bit mode, SS is ignored for addressing, but still carries privilege information.
echo.
echo === [Notes] ===
echo - In real mode (16-bit), segment registers are critical for memory addressing (segment:offset).
echo - In protected mode (32-bit), they define segment descriptors in the GDT/LDT.
echo   The Global Descriptor Table (GDT) and Local Descriptor Table (LDT) are data structures in the x86 architecture
       that define how memory segments are accessed and protected. The GDT is system‑wide, while the LDT is task‑specific.
echo - In long mode (64-bit), most segment registers (CS, SS, DS, ES) are ignored for base addressing; memory is flat.
echo - FS and GS remain important in 64-bit mode for accessing thread-local and system-local data.
echo - Windows uses FS:[offset] to access thread-local storage, and GS:[offset] in kernel mode for CPU-specific data.
echo.
goto 8993301
:generalregdefinee
echo === [X86-64 General Purpose Registers] ===
echo RAX - The "accumulator" register, often used for arithmetic operations and function return values.
echo RBX - The "base" register, historically used for addressing memory, now general purpose.
echo RCX - The "counter" register, used in loops and string operations, also the 1st function argument in Windows x64 calling convention.
echo RDX - The "data" register, used in multiplication/division, also the 2nd function argument in Windows x64 calling convention.
echo RSI - The "source index" register, used in string/memory operations, also general purpose.
echo RDI - The "destination index" register, used in string/memory operations, also general purpose.
echo RBP - The "base pointer" register, traditionally used to reference stack frames.
echo RSP - The "stack pointer" register, always points to the current top of the stack.
echo R8  - Extra general purpose register, also the 3rd function argument in Windows x64 calling convention.
echo R9  - Extra general purpose register, also the 4th function argument in Windows x64 calling convention.
echo R10 - Extra general purpose register, caller-saved, often used for temporary values.
echo R11 - Extra general purpose register, caller-saved, often used for temporary values.
echo R12 - Extra general purpose register, callee-saved, preserved across function calls.
echo R13 - Extra general purpose register, callee-saved, preserved across function calls.
echo R14 - Extra general purpose register, callee-saved, preserved across function calls.
echo R15 - Extra general purpose register, callee-saved, preserved across function calls.
echo.
echo === Notes ===
echo - All general purpose registers are 64-bit wide in x86-64.
echo - They can be accessed in smaller parts: e.g. RAX -^> EAX (32-bit), AX (16-bit), AH/AL (8-bit).
echo - Windows x64 calling convention uses RCX, RDX, R8, R9 for the first four integer/pointer arguments.
echo - Return values are placed in RAX.
echo.
goto 8993301
:assemsyntaxis
echo === X86-64 Intel Assembly Syntax Overview ===
echo 1. [Registers]
echo   - General purpose: RAX, RBX, RCX, RDX, RSI, RDI, RBP, RSP, R8-R15
echo   - Segment registers: CS, DS, ES, FS, GS, SS
echo   - Instruction pointer: RIP 
echo   - Flags register: RFLAGS
echo.
echo 2. [Instruction Format]
echo   - Intel syntax: mnemonic destination, source
echo   - Example: MOV RAX, RBX   ; copies RBX into RAX
echo.
echo 3. [Data Movement Instructions]
echo   - MOV: transfer data between registers/memory/immediates
echo   - PUSH/POP: stack operations
echo   - LEA: load effective address
echo.
echo 4. [Arithmetic Instructions]
echo   - ADD, SUB, MUL, IMUL, DIV, IDIV
echo   - INC, DEC
echo   - Example: ADD RAX, 5
echo.
echo 5. [Logical and Bitwise Instructions]
echo   - AND, OR, XOR, NOT
echo   - SHL, SHR, ROL, ROR
echo   - TEST: bitwise AND for flags only
echo.
echo 6. [Control Flow]
echo   - JMP: unconditional jump
echo   - CALL/RET: procedure call and return
echo   - Conditional jumps: JE, JNE, JG, JL, JGE, JLE, etc.
echo   - LOOP: decrement RCX and jump if not zero
echo.
echo 7. [Comparisons]
echo   - CMP: subtracts operands, sets flags, result discarded
echo   - TEST: logical AND, sets flags
echo.
echo 8. [Stack Frame Conventions (Windows x64 ABI)]
echo   - Function prologue: PUSH RBP, MOV RBP, RSP
echo   - Shadow space: 32 bytes reserved for calls
echo   - Parameters: RCX, RDX, R8, R9 (first four integer args)
echo   - Return value: RAX
echo.
echo 9. [Memory Addressing]
echo   - Syntax: [base + index*scale + displacement]
echo   - Example: MOV RAX, [RBX+RCX*4+16]
echo   - Scale factors: 1, 2, 4, 8
echo.
echo 10. [Directives (Assembler-specific)]
echo   - .data: define data section
echo   - .code: define code section
echo   - DB, DW, DD, DQ: define bytes/words/dwords/qwords
echo   - ALIGN, EQU, LABEL
echo.
echo 11. [System Calls / API Calls]
echo   - In Windows, you call WinAPI functions via CALL after setting registers
echo   - Example: CALL GetStdHandle from kernel32.dll
echo   - Linking requires kernel32.lib, user32.lib, etc.
echo.
echo 12. [Flags and Condition Codes]
echo   - Zero Flag (ZF), Sign Flag (SF), Carry Flag (CF), Overflow Flag (OF)
echo   - Used by conditional jumps
echo.
echo 13. [SIMD and Extensions]
echo   - SSE, AVX registers: XMM0-XMM15, YMM0-YMM15
echo   - Instructions: MOVDQA, ADDPS, MULPD, etc.
echo.
echo 14. [Comments]
echo   - Intel syntax uses ";" for comments
echo   - Example: MOV RAX, RBX ; copy RBX into RAX
echo.
echo 15. [Example Program Skeleton]
echo   section .data
echo     msg db "Hello, world!",0
echo   section .text
echo     global main
echo   main:
echo     ; your code here
echo.
goto 8993301
:helpinfomenFE
echo [HOW IT WORKS: NASM + GCC]
echo ------------------------------------------
echo 1. Writing Assembly
echo    - You create a .asm file containing x86-64 assembly instructions.
echo    - This file is human-readable machine code instructions.
echo.
echo 2. Assembling with NASM
echo    - NASM converts your .asm file into a machine code object file (.obj or .o).
echo    - Example: yourfile.asm → yourfile.obj
echo    - The object file contains your instructions in a format the linker can understand, 
echo      but it is NOT yet a runnable program.
echo.
echo 3. Linking with GCC
echo    - GCC takes your object file(s) and combines them into a single executable (.exe).
echo    - During this step, GCC:
echo          Adds standard startup code (CRT - C runtime)
echo          Links standard libraries (like libgcc, MSVCRT)
echo          Resolves references to external functions (e.g., printf, WinAPI)
echo    - Example: yourfile.obj → yourfile.exe
echo    - The result is a fully runnable Windows program.
echo.
echo 4. Output
echo    - After linking, you have a .exe file you can run on Windows.
echo    - If you used GCC in default mode, the executable will contain C runtime code, even if 
echo      your assembly is purely manual.
echo.
echo [PURE ASSEMBLY OPTION]
echo ------------------------------------------
echo - If you want a truly "pure assembly" executable with **no C runtime**:
echo     Assemble with NASM as usual
echo     Link with a linker directly (ld or Microsoft link.exe) without GCC startup files.
echo     When you're linking pure assembly on Windows:
echo     you're usually linking only the libraries that contain the Windows API functions your code calls.
echo     Since you're not using C runtime (CRT) or GCC, you don't need standard libraries like libgcc or msvcrt.
echo     instead use these:
echo ================= Windows API Libraries =================
echo kernel32.dll   -^> -lkernel32   : Console, memory, threads, processes, file I/O, time, etc. (Most basic programs need this)
echo user32.dll     -^> -luser32     : GUI functions like MessageBox, windows, menus, input (Only if your code uses GUI)
echo gdi32.dll      -^> -lgdi32      : Graphics Device Interface, drawing (For graphics output)
echo advapi32.dll   -^> -ladvapi32   : Registry, security, services (Rare for pure console apps)
echo shell32.dll    -^> -lshell32    : Shell functions (like ShellExecute) (Optional)
echo comctl32.dll   -^> -lcomctl32   : Windows common controls (GUI apps only)
echo ole32.dll      -^> -lole32      : COM and OLE functions (Advanced programs)
echo ws2_32.dll     -^> -lws2_32     : Windows Sockets / networking (Networking programs)
echo ==========================================================
echo     The executable will contain **only your assembly instructions** and necessary Windows API calls
echo     No CRT, no libgcc, no MSVCRT or UCRT code is added.
echo.
echo [SUMMARY]
echo ------------------------------------------
echo - NASM = turns your assembly into object files
echo - GCC = combines object files into an executable, adding C runtime by default
echo - Pure assembly = skip GCC and link manually to avoid extra runtime code
echo.
goto 8993301
:nasmcompatt
nasm --version
goto 8993301
:mingwcompatt
gcc --version
goto 8993301
:operationXXFFDDEE
setlocal enabledelayedexpansion
echo ===== Pure Assembly Build (User-Specified Library Paths) =====
echo.
rem Ask for ASM file
set /p SRC=Enter full path to your .asm file: 
if "%SRC%"=="" (
    echo Empty path given.
    endlocal
    goto 8993301
)
for %%F in ("%SRC%") do (
    set "BASE=%%~nF"
    set "SRCDIR=%%~dpF"
)
set "OBJ=%SRCDIR%%BASE%.obj"
set "EXE=%SRCDIR%%BASE%.exe"
echo.
echo Assembling with NASM...
nasm -f win64 "%SRC%" -o "%OBJ%"
if errorlevel 1 (
    echo ERROR assembling!
    endlocal
    goto 8993301
)
echo.
echo Linking with LD [no C runtime, pure assembly]...
rem Ask user for entry point
set /p ENTRY=Enter entry point symbol (e.g., main): 
if "%ENTRY%"=="" (
    echo No entry point provided! returning
    endlocal
    goto 8993301
)
rem Ask user how many library paths they want to add
set /p NUMPATHS=How many library paths do you want to include? (0 for none): 
if "%NUMPATHS%"=="" set NUMPATHS=0
rem Loop through each path
set LIBPATHFLAG=
for /L %%I in (1,1,%NUMPATHS%) do (
    set /p LIBPATH=Enter full path for library path %%I: 
    if not "!LIBPATH!"=="" (
        set LIBPATHFLAG=!LIBPATHFLAG! -L"!LIBPATH!"
    )
)
rem Ask user for additional libraries (optional)
set /p LIBS=Enter libraries to link (e.g., -lkernel32 -luser32), leave blank for none: 
rem Ask user for extra ld flags (optional)
set /p FLAGS=Enter extra ld flags (e.g., -nostdlib -s), leave blank for none: 
echo.
echo Final ld command:
echo ld "%OBJ%" -o "%EXE%" -e %ENTRY% !LIBPATHFLAG! %LIBS% %FLAGS%
echo.
echo Linking...
ld "%OBJ%" -o "%EXE%" -e %ENTRY% !LIBPATHFLAG! %LIBS% %FLAGS%
if errorlevel 1 (
    echo ERROR linking!
    endlocal
    goto 8993301
)
echo.
echo Built pure-assembly executable: %EXE%
goto 8993301
:operationRXTX00FE
REM ------------------------------------------------------------
REM Assemble NASM .asm and link to EXE using GCC (compatilize)
REM User can input multiple libraries if needed
REM ------------------------------------------------------------
REM Ask for the NASM source file
set /p SRC=Enter full path to your .asm file: 
if "%SRC%"=="" (
    echo Empty path given.
    goto 8993301
)
REM Extract base name and directory
for %%F in ("%SRC%") do (
    set "BASE=%%~nF"
    set "SRCDIR=%%~dpF"
)
set "OBJ=%SRCDIR%%BASE%.obj"
set "EXE=%SRCDIR%%BASE%.exe"
REM ---------------- Assemble ----------------
echo Assembling with NASM...
nasm -f win64 "%SRC%" -o "%OBJ%"
if errorlevel 1 (
    echo ERROR: NASM assembly failed!
    goto 8993301
)
REM ---------------- Link ----------------
echo Linking with GCC...
echo.
echo You can enter multiple libraries separated by spaces, e.g. -lkernel32 -luser32
set /p LIBS=Enter libraries to link (or leave blank for none): 
REM Build GCC command safely
if "%LIBS%"=="" (
    gcc "%OBJ%" -o "%EXE%" -mconsole
) else (
    gcc "%OBJ%" -o "%EXE%" -mconsole %LIBS%
)
if errorlevel 1 (
    echo ERROR: GCC linking failed!
    goto 8993301
)
echo.
echo Successfully built executable: %EXE%
goto 8993301
:operationFFEDDB
echo Downloading MinGW-w64 (winlibs) ZIP...
set "MINGW_ZIP_URL=https://github.com/brechtsanders/winlibs_mingw/releases/download/15.2.0posix-13.0.0-msvcrt-r1/winlibs-x86_64-posix-seh-gcc-15.2.0-mingw-w64msvcrt-13.0.0-r1.zip"
set "MINGW_ZIP=%~dp0mingw.zip"
set "MINGW_TEMP=%~dp0mingw-temp"
set "MINGW_FINAL=C:\Program Files\MinGW"
powershell -Command "Invoke-WebRequest '%MINGW_ZIP_URL%' -OutFile '%MINGW_ZIP%'"
powershell -Command "Expand-Archive -Path '%MINGW_ZIP%' -DestinationPath '%MINGW_TEMP%' -Force"
echo Moving MinGW to %MINGW_FINAL%...
if exist "%MINGW_FINAL%" rmdir /s /q "%MINGW_FINAL%"
mkdir "%MINGW_FINAL%"
xcopy /e /i /y "%MINGW_TEMP%" "%MINGW_FINAL%" >nul
set "MINGWPATH=%MINGW_FINAL%\mingw64\bin"
if exist "%MINGWPATH%\gcc.exe" (
    echo MinGW installed at %MINGWPATH%
    setx PATH "%MINGWPATH%;%PATH%"
) else (
    echo ERROR: gcc.exe not found in %MINGWPATH%!
)
goto 8993301
:operationFFEDAB
echo Choose NASM installer:
echo 1) 64-bit NASM installer
echo 2) 32-bit NASM installer
set /p NASMCHOICE=Enter 1 or 2: 
if "%NASMCHOICE%"=="1" (
    set "NASM_URL=https://www.nasm.us/pub/nasm/releasebuilds/3.01rc9/win64/nasm-3.01rc9-installer-x64.exe"
    set "NASMPATH=%ProgramFiles%\NASM"
) else if "%NASMCHOICE%"=="2" (
    set "NASM_URL=https://www.nasm.us/pub/nasm/releasebuilds/3.01rc9/win32/nasm-3.01rc9-installer-x86.exe"
    set "NASMPATH=%ProgramFiles(x86)%\NASM"
) else (
    echo Invalid choice.
    exit /b 1
)
set "NASM_FILE=%~dp0nasm-installer.exe"
echo Downloading NASM installer...
powershell -Command "Invoke-WebRequest '%NASM_URL%' -OutFile '%NASM_FILE%'"
echo Launching NASM installer. Please complete installation manually.
start "" "%NASM_FILE%"
pause
if exist "%NASMPATH%\nasm.exe" (
    echo NASM installed at %NASMPATH%
    setx PATH "%NASMPATH%;%PATH%"
) else (
    echo ERROR: NASM not installed correctly!
)
goto 8993301
:flaunchpp
setlocal
set "jq_url=https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe"
set "jq_path=%~dp0jq.exe"
set "output_file=%~dp0launchers_output.txt"
set "raw_json=%~dp0launchers_raw.json"
set "log_file=%~dp0launchers_debug.log"
if not exist "%jq_path%" (
    echo jq not found. Downloading jq... >> "%log_file%"
    powershell -Command "Invoke-WebRequest -Uri '%jq_url%' -OutFile '%jq_path%'" >> "%log_file%" 2>&1
    if exist "%jq_path%" (
        echo jq downloaded successfully. >> "%log_file%"
    ) else (
        echo ERROR: jq download failed. >> "%log_file%"
        type "%log_file%"
        exit /b 1
    )
)
echo Fetching raw JSON from ISRO API... >> "%log_file%"
curl -s "https://isro.vercel.app/api/launchers" > "%raw_json%"
if exist "%raw_json%" (
    echo Raw JSON saved to launchers_raw.json >> "%log_file%"
) else (
    echo ERROR: Failed to fetch JSON from ISRO API. >> "%log_file%"
    type "%log_file%"
    exit /b 1
)
echo Running jq to format output... >> "%log_file%"
"%jq_path%" -r ".launchers[]? | \"Launcher Platform: \(.id)\"" "%raw_json%" > "%output_file%" 2>> "%log_file%"
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: jq failed to parse JSON. See log for details. >> "%log_file%"
    type "%log_file%"
    exit /b 1
)
type "%output_file%" | more
echo Cleaning up... >> "%log_file%"
del /f /q "%jq_path%" >> "%log_file%" 2>&1
del /f /q "%output_file%" >> "%log_file%" 2>&1
del /f /q "%raw_json%" >> "%log_file%" 2>&1
del /f "%log_file%"
endlocal
goto catspallin
:fscc
setlocal
set "jq_url=https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe"
set "jq_path=%~dp0jq.exe"
set "output_file=%~dp0spacecrafts_output.txt"
set "raw_json=%~dp0spacecrafts_raw.json"
set "log_file=%~dp0spacecrafts_debug.log"
if not exist "%jq_path%" (
    echo jq not found. Downloading jq... >> "%log_file%"
    powershell -Command "Invoke-WebRequest -Uri '%jq_url%' -OutFile '%jq_path%'" >> "%log_file%" 2>&1
    if exist "%jq_path%" (
        echo jq downloaded successfully. >> "%log_file%"
    ) else (
        echo ERROR: jq download failed. >> "%log_file%"
        type "%log_file%"
        exit /b 1
    )
)
echo Fetching raw JSON from ISRO API... >> "%log_file%"
curl -s "https://isro.vercel.app/api/spacecrafts" > "%raw_json%"
if exist "%raw_json%" (
    echo Raw JSON saved to spacecrafts_raw.json >> "%log_file%"
) else (
    echo ERROR: Failed to fetch JSON from ISRO API. >> "%log_file%"
    type "%log_file%"
    exit /b 1
)
echo Running jq to format output... >> "%log_file%"
"%jq_path%" -r ".spacecrafts[]? | \"Name: \(.name // \"\")\nID: \(.id // \"\")\n---\"" "%raw_json%" > "%output_file%" 2>> "%log_file%"
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: jq failed to parse JSON. See log for details. >> "%log_file%"
    type "%log_file%"
    exit /b 1
)
type "%output_file%" | more
echo Cleaning up... >> "%log_file%"
del /f /q "%jq_path%" >> "%log_file%" 2>&1
del /f /q "%output_file%" >> "%log_file%" 2>&1
del /f /q "%raw_json%" >> "%log_file%" 2>&1
del /f "%log_file%"
endlocal
goto catspallin
:cls_FFFF
cls
:nmapcc
setlocal
echo     _   __                    
echo    / ^| / /___ ___  ____ _____ 
echo   /  ^|/ / __ `__ \/ __ `/ __ \
echo  / /^|  / / / / / / /_/ / /_/ /
echo /_/ ^|_/_/ /_/ /_/\__,_/ .___/ 
echo                      /_/     
echo.
echo WARNING! you are about to scan IP-adresses with network mapper, do this only on networks that you own yourself, or that you are authorised to scan.
echo Enter "abort" to return to the main menu
echo Enter "cls" to clear the terminal
:: Always use Program Files as install directory
set "INSTALLDIR=%ProgramFiles%\Nmap\"
:loopius
set /p usercmd=Enter the Nmap command e.g. [nmap -sS 10.0.0.0/8 172.16.0.0/12 192.168.0.0/16]:
if /i "%usercmd%"=="abort" (
    endlocal
    goto catspallin
)
if /i "%usercmd%"=="cls" endlocal & goto cls_FFFF
if "%usercmd%"=="" (
    echo No input given.
    goto loopius
)
echo Launching Nmap...
"%INSTALLDIR%nmap.exe" %usercmd:~5%
echo.
goto loopius
:initnmapp
setlocal
echo WARNING! you are about to install NMAP and NPCAP, if you do not properly finish this operation, the installations will fail and it will break both programs.
:: Prompt for Nmap version
set /p versionnmap=Enter the version of Nmap e.g. [7.98]:
:: Paths
set "NMAP_URL=https://nmap.org/dist/nmap-%versionnmap%-setup.exe"
set "NMAP_INSTALLER=%ProgramFiles%\nmap-%versionnmap%-setup.exe"
set "NMAP_TARGET=%ProgramFiles%\Nmap"
:: --- CLEAN UNINSTALL SECTION ---
echo Checking for existing Nmap/Npcap installations...
:: Uninstall Nmap if present
for /f "tokens=2*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s /f "Nmap" ^| findstr "UninstallString"') do (
    echo Found Nmap uninstall entry, removing...
    call %%b
)
:: Uninstall Npcap if present
for /f "tokens=2*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s /f "Npcap" ^| findstr "UninstallString"') do (
    echo Found Npcap uninstall entry, removing...
    call %%b
)
:: --- DOWNLOAD AND INSTALL NMAP ---
echo Downloading Nmap version %versionnmap% from %NMAP_URL%
powershell -Command "Invoke-WebRequest -Uri '%NMAP_URL%' -OutFile '%NMAP_INSTALLER%'"
echo Installing Nmap to %NMAP_TARGET%...
"%NMAP_INSTALLER%" /D=%NMAP_TARGET%
:: Cleanup installer
echo Deleting Nmap installer from Program Files...
del "%NMAP_INSTALLER%" >nul 2>&1
echo Installer deleted from Program Files.
echo Nmap %versionnmap% installation finished, returning to mainframe...
endlocal
goto catspallin
:expelnmapp
setlocal
echo WARNING! you are about to uninstall NMAP and NPCAP, if you do not properly finish this operation, the de-installations will fail and it will break both programs. 
set "INSTALLDIR=%ProgramFiles%\Nmap"
echo Checking for Nmap in "%INSTALLDIR%"...
if not exist "%INSTALLDIR%" (
    echo No Nmap installation found here.
    endlocal & goto catspallin
)
echo Removing Nmap...
:: Run Nmap uninstaller if present
if exist "%INSTALLDIR%\uninstall.exe" (
    echo Running Nmap uninstaller...
    "%INSTALLDIR%\uninstall.exe"
) else (
    echo No Nmap uninstaller found, deleting folder manually...
    rmdir /s /q "%INSTALLDIR%"
)
:: Also remove Npcap interactively
echo Checking for Npcap installation in Program Files...
set "NPCAPDIR=%ProgramFiles%\Npcap"
if exist "%NPCAPDIR%" (
    echo Removing Npcap...
    if exist "%NPCAPDIR%\uninstall.exe" (
        echo Running Npcap uninstaller...
        "%NPCAPDIR%\uninstall.exe"
    ) else (
        echo No Npcap uninstaller found, deleting folder manually...
        rmdir /s /q "%NPCAPDIR%"
    )
    echo Npcap removed.
) else (
    echo No Npcap installation found in Program Files.
)
echo Nmap and Npcap cleanup complete.
endlocal
goto catspallin
:privorpubb
setlocal enabledelayedexpansion
SET /P ip=Enter IP address e.g. [192.168.1.1]:
:: Extract first and second octets
for /f "tokens=1-4 delims=." %%a in ("%ip%") do (
    set o1=%%a
    set o2=%%b
    set o3=%%c
    set o4=%%d
)
:: Now use normal expansion (outside the loop body)
:: 10.0.0.0 – 10.255.255.255
if %o1%==10 (
    echo %ip% is PRIVATE
    goto endblock
)
:: 172.16.0.0 – 172.31.255.255
if %o1%==172 (
    if %o2% GEQ 16 if %o2% LEQ 31 (
        echo %ip% is PRIVATE
        goto endblock
    )
)
:: 192.168.0.0 – 192.168.255.255
if %o1%==192 if %o2%==168 (
    echo %ip% is PRIVATE
    goto endblock
)
:: Otherwise public
echo %ip% is PUBLIC
:endblock
endlocal
echo Done, returning to mainframe...
goto catspallin
:getmacinff
setlocal
echo Calling MAC-INFO framework...
SET /P targetmacadrcurlfetch=Enter the MAC-adress to fetch information of e.g. [44-38-39-ff-ef-57]:
set MAC=%targetmacadrcurlfetch%
set MAC=%MAC:-=:%
curl https://api.macvendors.com/%MAC% & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the vendor info of the mac adress with curl, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the vendor info of the mac adress with curl.
)
echo Returning to mainframe...
endlocal
goto catspallin
:delgpoo
echo Calling AD/DS GPO deletion framework...
setlocal
SET /P targetdcfordel=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P gponame=Enter the name of the Group Policy Object to delete:
echo Attempting to delete GPO %gponame% on %targetdcfordel%...
powershell -Command "Remove-GPO -Name '%gponame%' -Server '%targetdcfordel%' -Confirm:$false" -Credential (New-Object System.Management.Automation.PSCredential('%adminusr%',(ConvertTo-SecureString '%adminpwd%' -AsPlainText -Force)))
IF %errorlevel%==1 (
    echo Error! The program failed to delete GPO %gponame%.
    echo Possible solutions:
    echo   - Verify that GPO %gponame% exists.
    echo   - Ensure account %adminusr% has rights to delete GPOs.
    echo   - Check connectivity to domain controller %targetdcfordel%.
    echo   - Confirm RSAT or Group Policy Management tools are installed if running on a client machine.
) ELSE (
    echo Success! The program succeeded to delete GPO %gponame%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:editgpoo
echo Calling AD/DS GPO editing framework...
setlocal
SET /P targetdcforedit=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P gponame=Enter the name of the existing Group Policy Object:
SET /P gpodesc=Enter a new description for the GPO (optional):
SET /P regpath=Enter the registry path for the policy setting e.g. [HKLM\Software\Policies\MyApp]:
SET /P regname=Enter the registry value name e.g. [EnableFeature]:
SET /P regtype=Enter the registry type e.g. [DWORD]:
SET /P regvalue=Enter the registry value e.g. [1]:
echo Attempting to edit GPO %gponame% on %targetdcforedit%...
powershell -Command "Set-GPO -Name '%gponame%' -Comment '%gpodesc%' -Server '%targetdcforedit%'; Set-GPRegistryValue -Name '%gponame%' -Key '%regpath%' -ValueName '%regname%' -Type %regtype% -Value %regvalue%" -Credential (New-Object System.Management.Automation.PSCredential('%adminusr%',(ConvertTo-SecureString '%adminpwd%' -AsPlainText -Force)))
IF %errorlevel%==1 (
    echo Error! The program failed to edit GPO %gponame%.
    echo Possible solutions:
    echo   - Verify that GPO %gponame% exists.
    echo   - Ensure account %adminusr% has rights to edit GPOs.
    echo   - Confirm registry path and value syntax are correct.
    echo   - Check connectivity to domain controller %targetdcforedit%.
    echo   - Confirm RSAT or Group Policy Management tools are installed if running on a client machine.
) ELSE (
    echo Success! The program succeeded to edit GPO %gponame% and define its features.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addgpotoouu
echo Calling AD/DS new policy creation + linking framework...
setlocal
SET /P targetdcforgpo=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P gponame=Enter the name of the new Group Policy Object:
SET /P targetouDN=Enter the distinguished name of the OU e.g. [OU=Sales,DC=flappy,DC=local]:
echo Attempting to create new GPO %gponame% and link it to OU %targetouDN% on %targetdcforgpo%...
powershell -Command "New-GPO -Name '%gponame%' -Server '%targetdcforgpo%'; New-GPLink -Name '%gponame%' -Target '%targetouDN%' -Server '%targetdcforgpo%' -Enforced:$false" -Credential (New-Object System.Management.Automation.PSCredential('%adminusr%',(ConvertTo-SecureString '%adminpwd%' -AsPlainText -Force)))
IF %errorlevel%==1 (
    echo Error! The program failed to create and link GPO %gponame% to OU %targetouDN%.
    echo Possible solutions:
    echo   - Verify the OU distinguished name syntax.
    echo   - Ensure GPO name %gponame% is valid and not already in use.
    echo   - Ensure account %adminusr% has rights to create and link GPOs.
    echo   - Check connectivity to domain controller %targetdcforgpo%.
    echo   - Confirm RSAT or Group Policy Management tools are installed if running on a client machine.
) ELSE (
    echo Success! The program succeeded to create new GPO %gponame% and link it to OU %targetouDN%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:uninstallrsatt
echo Calling RSAT removal framework...
setlocal
SET /P featurechoice=Enter RSAT feature to uninstall e.g. [RSAT:ActiveDirectory-DomainServices-Tools]:
echo Attempting to uninstall RSAT feature %featurechoice%...
DISM /Online /Remove-Capability /CapabilityName:%featurechoice%
IF %errorlevel%==1 (
    echo Error! The program failed to uninstall RSAT feature %featurechoice%.
    echo Possible solutions:
    echo   - Verify the feature name syntax (use DISM /Online /Get-Capabilities to list installed features).
    echo   - Ensure you are running as Administrator.
) ELSE (
    echo Success! RSAT feature %featurechoice% uninstalled successfully.
)
endlocal
echo Returning to mainframe...
goto catspallin
:installrsatt
echo Calling RSAT installation framework...
setlocal
SET /P featurechoice=Enter RSAT feature to install e.g. [RSAT:ActiveDirectory-DomainServices-Tools]:
echo Attempting to install RSAT feature %featurechoice%...
DISM /Online /Add-Capability /CapabilityName:%featurechoice%
IF %errorlevel%==1 (
    echo Error! The program failed to install RSAT feature %featurechoice%.
    echo Possible solutions:
    echo   - Verify the feature name syntax (use DISM /Online /Get-Capabilities to list available features).
    echo   - Ensure you are running as Administrator.
    echo   - Check internet connectivity for feature download.
) ELSE (
    echo Success! RSAT feature %featurechoice% installed successfully.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addsrepchkk
echo Calling AD/DS replication check framework...
setlocal
SET /P targetdcforrep=Enter the FQDN, ip-adress or hostname of the domain controller:
echo Attempting to check replication status on %targetdcforrep%...
repadmin /replsummary
IF %errorlevel%==1 (
   echo Error! The program failed to check replication status.
   echo Possible solutions:
   echo   - Verify connectivity to domain controller.
   echo   - Ensure account has rights to run repadmin.
) ELSE (
   echo Success! Replication summary displayed.
)
endlocal
echo Returning to mainframe...
goto catspallin
:fgpoupdatee
echo Calling AD/DS group policy update framework...
setlocal
SET /P targetdcforgp=Enter the FQDN, ip-adress or hostname of the domain controller:
SET /P adminusr=Enter the domain admin username:
SET /P adminpwd=Enter the domain admin password:
echo Attempting to force group policy update on %targetdcforgp%...
gpupdate /force
IF %errorlevel%==1 (
   echo Error! The program failed to update group policy.
   echo Possible solutions:
   echo   - Verify connectivity to domain controller.
   echo   - Ensure account %adminusr% has rights.
) ELSE (
   echo Success! Group policy update executed successfully.
)
endlocal
echo Returning to mainframe...
goto catspallin
:delcompaccc
echo Calling AD/DS computer account deletion framework...
setlocal
SET /P targetdcfordelcomp=Enter the FQDN, ip-adress or hostname of the domain controller:
SET /P adminusr=Enter the domain admin username:
SET /P adminpwd=Enter the domain admin password:
SET /P compDN=Enter the distinguished name of the computer account:
echo Attempting to delete computer account %compDN%...
dsrm "%compDN%" -u %adminusr% -p %adminpwd% -server %targetdcfordelcomp% -noprompt
IF %errorlevel%==1 (
   echo Error! The program failed to delete the computer account.
   echo Possible solutions:
   echo   - Verify DN syntax for %compDN%.
   echo   - Ensure %adminusr% has rights to delete computer accounts.
   echo   - Confirm the computer account exists.
) ELSE (
   echo Success! The program succeeded to delete computer account %compDN%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addcompaccc
echo Calling AD/DS computer account creation framework...
setlocal
SET /P targetdcforcomp=Enter the FQDN, ip-adress or hostname of the domain controller:
SET /P adminusr=Enter the domain admin username:
SET /P adminpwd=Enter the domain admin password:
SET /P compname=Enter the computer name:
SET /P targetou=Enter the distinguished name of the OU for the computer:
echo Attempting to create computer account %compname% in OU %targetou%...
dsadd computer "CN=%compname%,%targetou%" -u %adminusr% -p %adminpwd% -server %targetdcforcomp%
IF %errorlevel%==1 (
   echo Error! The program failed to create the computer account.
   echo Possible solutions:
   echo   - Verify DN syntax for %targetou%.
   echo   - Ensure %adminusr% has rights to create computer accounts.
   echo   - Confirm %compname% does not already exist.
) ELSE (
   echo Success! The program succeeded to create computer account %compname%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:enadomusrr
echo Calling AD/DS user enable framework...
setlocal
SET /P targetdcforenable=Enter the FQDN, ip-adress or hostname of the domain controller:
SET /P adminusr=Enter the domain admin username:
SET /P adminpwd=Enter the domain admin password:
SET /P targetusrDN=Enter the distinguished name of the user:
echo Attempting to enable user %targetusrDN% on %targetdcforenable%...
dsmod user "%targetusrDN%" -disabled no -u %adminusr% -p %adminpwd% -server %targetdcforenable%
IF %errorlevel%==1 (
   echo Error! The program failed to enable the user.
   echo Possible solutions:
   echo   - Verify DN syntax for %targetusrDN%.
   echo   - Ensure %adminusr% has rights to enable accounts.
   echo   - Confirm user exists in AD.
) ELSE (
   echo Success! The program succeeded to enable user %targetusrDN%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:disdomusrr
echo Calling AD/DS user disable framework...
setlocal
SET /P targetdcfordisable=Enter the FQDN, ip-adress or hostname of the domain controller:
SET /P adminusr=Enter the domain admin username:
SET /P adminpwd=Enter the domain admin password:
SET /P targetusrDN=Enter the distinguished name of the user:
echo Attempting to disable user %targetusrDN% on %targetdcfordisable%...
dsmod user "%targetusrDN%" -disabled yes -u %adminusr% -p %adminpwd% -server %targetdcfordisable%
IF %errorlevel%==1 (
   echo Error! The program failed to disable the user.
   echo Possible solutions:
   echo   - Verify DN syntax for %targetusrDN%.
   echo   - Ensure %adminusr% has rights to disable accounts.
   echo   - Confirm user exists in AD.
) ELSE (
   echo Success! The program succeeded to disable user %targetusrDN%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:resusrpasss
echo Calling AD/DS user password reset framework...
setlocal
SET /P targetdcforpwd=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P targetusrDN=Enter the distinguished name of the user e.g. [CN=flappyuser,OU=Sales,DC=flappy,DC=local]:
SET /P newpwd=Enter the new password for the user:
echo Attempting to reset password for %targetusrDN% on %targetdcforpwd%...
dsmod user "%targetusrDN%" -pwd %newpwd% -u %adminusr% -p %adminpwd% -server %targetdcforpwd%
IF %errorlevel%==1 (
   echo Error! The program failed to reset the password.
   echo Possible solutions:
   echo   - Verify the distinguished name syntax for %targetusrDN%.
   echo   - Ensure account %adminusr% has rights to reset passwords.
   echo   - Confirm password meets domain complexity requirements.
   echo   - Check connectivity to %targetdcforpwd%.
) ELSE (
   echo Success! The program succeeded to reset the password for %targetusrDN%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:ougroupusrss
echo Calling AD/DS OU group membership management framework...
setlocal
SET /P targetdcforgrpmanage=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P actionchoice=Do you want to add or delete a user from a group?:
SET /P targetusrDN=Enter the distinguished name of the user e.g. [CN=flappyuser,OU=Sales,DC=flappy,DC=local]:
SET /P targetgrp=Enter the distinguished name of the group e.g. [CN=FlappyGroup,OU=Sales,DC=flappy,DC=local]:
IF "%actionchoice%"=="add" (
    echo Attempting to add user %targetusrDN% to group %targetgrp% on %targetdcforgrpmanage%...
    dsmod group "%targetgrp%" -addmbr "%targetusrDN%" -u %adminusr% -p %adminpwd% -server %targetdcforgrpmanage%
    IF %errorlevel%==1 (
        echo Error! The program failed to add user to group.
        echo Possible solutions:
        echo   - Verify the distinguished names for both user and group.
        echo   - Ensure account %adminusr% has rights to modify group memberships.
        echo   - Confirm that both user and group exist in the OU.
        echo   - Check network connectivity to %targetdcforgrpmanage%.
    ) ELSE (
        echo Success! The program succeeded to add user to group.
    )
    endlocal
    echo Returning to mainframe...
    goto catspallin
)
IF "%actionchoice%"=="delete" (
    echo Attempting to remove user %targetusrDN% from group %targetgrp% on %targetdcforgrpmanage%...
    dsmod group "%targetgrp%" -rmmbr "%targetusrDN%" -u %adminusr% -p %adminpwd% -server %targetdcforgrpmanage%
    IF %errorlevel%==1 (
        echo Error! The program failed to remove user from group.
        echo Possible solutions:
        echo   - Verify the distinguished names for both user and group.
        echo   - Ensure account %adminusr% has rights to modify group memberships.
        echo   - Confirm that the user is actually a member of the group.
        echo   - Check network connectivity to %targetdcforgrpmanage%.
    ) ELSE (
        echo Success! The program succeeded to remove user from group.
    )
    endlocal
    echo Returning to mainframe...
    goto catspallin
)
echo Invalid choice! Please type either add or delete.
endlocal
echo Returning to mainframe...
goto catspallin
:expgrpfrmouu
echo Calling AD/DS OU group deletion framework...
setlocal
SET /P targetdcfordelgrp=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P delgrpname=Enter the group name you would like to delete e.g. [FlappyGroup]:
SET /P targetou=Enter the distinguished name of the OU where the group resides e.g. [OU=Sales,DC=flappy,DC=local]:
echo Attempting to delete group %delgrpname% from OU %targetou% on %targetdcfordelgrp%...
dsrm "CN=%delgrpname%,%targetou%" -u %adminusr% -p %adminpwd% -server %targetdcfordelgrp% -noprompt
IF %errorlevel%==1 (
   echo Error! The program failed to delete the group from the specified OU.
   echo Possible solutions:
   echo   - Verify the distinguished name syntax for %targetou% and the CN for %delgrpname%.
   echo   - Ensure account %adminusr% has sufficient rights to delete groups in %targetou%.
   echo   - Confirm that the group %delgrpname% actually exists in %targetou%.
   echo   - Check network connectivity to %targetdcfordelgrp%.
) ELSE (
   echo Success! The program succeeded to delete group %delgrpname% from OU %targetou%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addgrptoouu
echo Calling AD/DS OU group creation framework...
setlocal
SET /P targetdcforougrp=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P newgrpname=Enter the new group name you would like to create e.g. [FlappyGroup]:
SET /P targetou=Enter the distinguished name of the OU where the group should be placed e.g. [OU=Sales,DC=flappy,DC=local]:
echo Attempting to create group %newgrpname% in OU %targetou% on %targetdcforougrp%...
dsadd group "CN=%newgrpname%,%targetou%" -samid %newgrpname% -secgrp yes -scope l -server %targetdcforougrp% -u %adminusr% -p %adminpwd%
IF %errorlevel%==1 (
   echo Error! The program failed to create the group in the specified OU.
   echo Possible solutions:
   echo   - Verify the distinguished name syntax for %targetou% is correct.
   echo   - Ensure account %adminusr% has sufficient rights to create groups in %targetou%.
   echo   - Confirm that the group name %newgrpname% does not already exist.
   echo   - Check network connectivity to %targetdcforougrp%.
) ELSE (
   echo Success! The program succeeded to create group %newgrpname% in OU %targetou%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:expusrfrmouu
echo Calling AD/DS OU user deletion framework...
setlocal
SET /P targetdcfordelusr=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P delusrname=Enter the username you would like to delete e.g. [flappyuser]:
SET /P targetou=Enter the distinguished name of the OU where the user resides e.g. [OU=Sales,DC=flappy,DC=local]:
echo Attempting to delete user %delusrname% from OU %targetou% on %targetdcfordelusr%...
dsrm "CN=%delusrname%,%targetou%" -u %adminusr% -p %adminpwd% -server %targetdcfordelusr% -noprompt
IF %errorlevel%==1 (
   echo Error! The program failed to delete the user account from the specified OU.
   echo Possible solutions:
   echo   - Verify the distinguished name syntax for %targetou% and the CN for %delusrname%.
   echo   - Ensure account %adminusr% has sufficient rights to delete users in %targetou%.
   echo   - Confirm that the user %delusrname% actually exists in %targetou%.
   echo   - Check network connectivity to %targetdcfordelusr%.
) ELSE (
   echo Success! The program succeeded to delete user %delusrname% from OU %targetou%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addusrtoouu
echo Calling AD/DS OU user creation framework...
setlocal
SET /P targetdcforouusr=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
SET /P newusrname=Enter the new username you would like to create e.g. [flappyuser]:
SET /P newusrpwd=Enter the password for the new user:
SET /P targetou=Enter the distinguished name of the OU where the user should be placed e.g. [OU=Sales,DC=flappy,DC=local]:
echo Attempting to create user %newusrname% in OU %targetou% on %targetdcforouusr%...
dsadd user "CN=%newusrname%,%targetou%" -samid %newusrname% -pwd %newusrpwd% -server %targetdcforouusr% -u %adminusr% -p %adminpwd%
IF %errorlevel%==1 (
   echo Error! The program failed to create the user account in the specified OU.
   echo Possible solutions:
   echo   - Verify that the distinguished name syntax for %targetou% is correct.
   echo   - Ensure account %adminusr% has sufficient rights to create users in %targetou%.
   echo   - Double-check the password complexity requirements for %newusrpwd%.
   echo   - Confirm network connectivity to %targetdcforouusr%.
) ELSE (
   echo Success! The program succeeded to create user %newusrname% in OU %targetou%.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addsgetou
echo Calling AD/DS OU info framework...
setlocal
SET /P targetdcforouinfo=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
SET /P adminusr=Enter the domain admin username e.g. [administrator]:
SET /P adminpwd=Enter the domain admin password:
echo Attempting to fetch Organizational Units information from %targetdcforouinfo% using account %adminusr%...
dsquery ou -server %targetdcforouinfo% -u %adminusr% -p %adminpwd%
IF %errorlevel%==1 (
   echo Error! The program failed to list OUs on the Domain Controller.
   echo Possible solutions:
   echo   - Verify that the account %adminusr% has sufficient rights to query Active Directory.
   echo   - Double-check the password entered for %adminusr%.
   echo   - Ensure RSAT tools (dsquery) are installed on this client.
   echo   - Confirm network connectivity to %targetdcforouinfo%.
) ELSE (
   echo Success! The program succeeded to list all OUs on the Domain Controller.
)
SET /P addsoutargetacde=Enter the distinguished name of the OU you would like more information of e.g. [OU=Sales,DC=flappy,DC=local]:
echo Fetching OU structure for %addsoutargetacde%...
dsquery * "%addsoutargetacde%" -scope subtree -attr distinguishedName objectClass -u %adminusr% -p %adminpwd% -server %targetdcforouinfo%
IF %errorlevel%==1 (
   echo Error! The program failed to get info on the specific OU.
   echo Possible solutions:
   echo   - Verify the distinguished name syntax for %addsoutargetacde%.
   echo   - Ensure account %adminusr% has rights to read OU details.
   echo   - Check that the OU exists on %targetdcforouinfo%.
) ELSE (
   echo Success! The program succeeded to get info on the specific OU.
)
endlocal
echo Returning to mainframe...
goto catspallin
:addsgetdgrp
setlocal
echo Calling AD/DS domain group info framework...
SET /P targetdcforgrpinfo=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
echo Fetching domain groups information for %targetdcforgrpinfo%...
net group /domain /server:%targetdcforgrpinfo%
IF %errorlevel%==1 (
   echo Warning! The program failed to list all domain groups on the Domain Controller, LDAP enumeration may be restricted.
) ELSE (
   echo Success! The program succeeded to list all domain groups on the Domain Controller.
)
SET /P addsdgrptargetacde=Enter the domain group you would like more information of e.g. [Domain Admins]:
net group "%addsdgrptargetacde%" /domain /server:%targetdcforgrpinfo%
IF %errorlevel%==1 (
   echo Warning! The program failed to get info on the specific domain group on the Domain Controller, LDAP enumeration may be restricted.
) ELSE (
   echo Success! The program succeeded to get info on the specific domain group on the Domain Controller.
)
echo Returning to mainframe...
endlocal
goto catspallin
:leavedcc
setlocal
echo Calling the leave DC framework...
SET /P fgftargetdomainadminname=Enter the domain name with the administrator username of the domain e.g. [flappybird\administrator]:
SET /P fgfpasswordofdomainadminaddf=Enter the password of the administrator of the domain e.g. [P4SSW0RD]:
wmic computersystem where name="%computername%" call unjoindomainorworkgroup username="%fgftargetdomainadminname%" password="%fgfpasswordofdomainadminaddf%"
IF %errorlevel%==1 (
   echo Warning! The program failed to leave the domain with the following parameters.
   echo ADMIN-USERNAME: %fgftargetdomainadminname%
   echo PASSWORD: %fgfpasswordofdomainadminaddf%
) ELSE (
   echo Success! The program succeeded to leave the domain, but a restart is required.
)
echo Returning to mainframe...
endlocal
goto catspallin
:joindcc
setlocal
echo Calling the join DC framework...
SET /P domaintojoinadcb=Enter the domain name you wish to join e.g. [flappybird.local]:
SET /P targetdomainadminname=Enter the domain name with the administrator username of the domain e.g. [flappybird\administrator]:
SET /P passwordofdomainadminaddf=Enter the password of the administrator of the domain e.g. [P4SSW0RD]:
wmic computersystem where name="%computername%" call joindomainorworkgroup name="%domaintojoinadcb%" username="%targetdomainadminname%" password="%passwordofdomainadminaddf%"
IF %errorlevel%==1 (
   echo Warning! The program failed to join the domain with the following parameters.
   echo DOMAIN: %domaintojoinadcb%
   echo ADMIN-USERNAME: %targetdomainadminname%
   echo PASSWORD: %passwordofdomainadminaddf%
) ELSE (
   echo Success! The program succeeded to join the domain, but a restart is required.
)
echo Returning to mainframe...
endlocal
goto catspallin
:addsgetusrr
setlocal
echo Calling AD/DS user info framework...
SET /P targetdcforusrinfo=Enter the FQDN, ip-adress or hostname of the domain controller e.g. [DC01], [DC01.flappy.local] or [127.0.0.1]:
echo Fetching users information for %targetdcforusrinfo%...
net user /domain /server:%targetdcforusrinfo%
IF %errorlevel%==1 (
   echo Warning! The program failed to list all users on the Domain Controller, LDAP enumeration may be restricted.
) ELSE (
   echo Success! The program succeeded to list all users on the Domain Controller.
)
SET /P addsusertargetacde=Enter the username you would like more information of e.g. [administrator]:
net user %addsusertargetacde% /domain /server:%targetdcforusrinfo%
IF %errorlevel%==1 (
   echo Warning! The program failed to get info on the specific user on the Domain Controller, LDAP enumeration may be restricted.
) ELSE (
   echo Success! The program succeeded to get info on the specific user on the Domain Controller.
)
echo Returning to mainframe...
endlocal
goto catspallin
:diskhealthh
setlocal enabledelayedexpansion
echo Calling disk health framework...
echo Listing all root drives...
fsutil fsinfo drives
IF %errorlevel%==1 (
   echo Warning! The program failed to list all root drives.
) ELSE (
   echo Success! The program succeeded to list all root drives.
)
echo operation [A] read-only mode. It scans the drive and reports errors but does not correct them.
echo operation [B] Lock the drive, Repair logical file system errors and Update the disk its metadata.
:requestreloopdiskhltchk
SET /P operationfordiskselct=Select the operation e.g. [A] or [B]:
IF /I "%operationfordiskselct%"=="A" set fparameterforhltchkdisk=off & goto goodparameterchkdiskhltgivn
IF /I "%operationfordiskselct%"=="B" set fparameterforhltchkdisk=on & goto goodparameterchkdiskhltgivn
echo Warning invalid input. Please enter A or B.
goto requestreloopdiskhltchk
:goodparameterchkdiskhltgivn
SET /P rootdrivetragethltchk=Enter the root drive to perform the health check of e.g. [C:]:
IF "%fparameterforhltchkdisk%"=="off" (
   echo Running read-only scan on %rootdrivetragethltchk%...
   chkdsk %rootdrivetragethltchk%
   IF %errorlevel%==1 (
      echo Warning! The program failed to check the health of root drive: %rootdrivetragethltchk%
   ) ELSE (
      echo Success! The program succeeded to check the health of root drive: %rootdrivetragethltchk%
   )
   endlocal
   goto catspallin
)
IF "%fparameterforhltchkdisk%"=="on" (
   echo Running repair mode scan on %rootdrivetragethltchk%...
   chkdsk /f %rootdrivetragethltchk%
   IF %errorlevel%==1 (
      echo Warning! The program failed to check the health of root drive: %rootdrivetragethltchk%
   ) ELSE (
      echo Success! The program succeeded to check the health of root drive: %rootdrivetragethltchk%
   )
   IF /I "%rootdrivetragethltchk%"=="C" (
      echo Warning! The system requires a reboot when C: is scanned with operation B so changes can take effect.
   )
   endlocal
   goto catspallin
)
:syshealthh
setlocal enabledelayedexpansion
echo Running System Health Diagnostics...
echo Checking system files integrity...
sfc /scannow
IF %errorlevel%==1 (
   echo Warning! The program failed to check system files integrity.
) ELSE (
echo Success! The program succeeded to check system files integrity.
)
echo Checking disk health...
chkdsk C:
IF %errorlevel%==1 (
   echo Warning! The program failed to check disk health of root drive C.
) ELSE (
echo Success! The program succeeded to check disk health of root drive C.
)
echo Diagnostics complete.
endlocal
goto catspallin
:sha512evall
setlocal enabledelayedexpansion
echo Calling SHA512 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" SHA512 2^>nul') do (
        if "%%H"=="" (
            goto SkipInnerSHA512
        )
        set "hash=%%H"
        goto SkipInnerSHA512
    )
    :SkipInnerSHA512
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
set "finalError=%errorOccurred%"
endlocal
if "%finalError%"=="1" (
    echo Warning! SHA512 evaluation failed for some files.
) else (
    echo Success! SHA512 evaluation completed.
)
goto catspallin
:sha384evall
setlocal enabledelayedexpansion
echo Calling SHA384 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" SHA384 2^>nul') do (
        if "%%H"=="" (
            goto SkipInnerSHA384
        )
        set "hash=%%H"
        goto SkipInnerSHA384
    )
    :SkipInnerSHA384
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
set "finalError=%errorOccurred%"
endlocal
if "%finalError%"=="1" (
    echo Warning! SHA384 evaluation failed for some files.
) else (
    echo Success! SHA384 evaluation completed.
)
goto catspallin
:sha256evall
setlocal enabledelayedexpansion
echo Calling SHA256 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" SHA256 2^>nul') do (
        if "%%H"=="" (
            goto SkipInnerSHA256
        )
        set "hash=%%H"
        goto SkipInnerSHA256
    )
    :SkipInnerSHA256
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
set "finalError=%errorOccurred%"
endlocal
if "%finalError%"=="1" (
    echo Warning! SHA256 evaluation failed for some files.
) else (
    echo Success! SHA256 evaluation completed.
)
goto catspallin
:sha1evall
setlocal enabledelayedexpansion
echo Calling SHA1 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" SHA1 2^>nul') do (
        if "%%H"=="" (
            goto SkipInnerSHA1
        )
        set "hash=%%H"
        goto SkipInnerSHA1
    )
    :SkipInnerSHA1
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
set "finalError=%errorOccurred%"
endlocal
if "%finalError%"=="1" (
    echo Warning! SHA1 evaluation failed for some files.
) else (
    echo Success! SHA1 evaluation completed.
)
goto catspallin
:md4evall
setlocal enabledelayedexpansion
echo Calling MD4 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" MD4 2^>nul') do (
        if "%%H"=="" (
            goto SkipInner
        )
        set "hash=%%H"
        goto SkipInner
    )
    :SkipInner
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
REM Save the error flag into a variable that persists after endlocal
set "finalError=%errorOccurred%"
endlocal
REM Check overall result
if "%finalError%"=="1" (
    echo.
    echo Warning! The program failed to partially evaluate the hash values for the files in the program folder, compatibility has been compromised.
) else (
    echo.
    echo Success! The program succeeded to evaluate the hash values for the files in the program folder.
)
goto catspallin
:md2evall
setlocal enabledelayedexpansion
echo Calling MD2 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" MD2 2^>nul') do (
        if "%%H"=="" (
            goto SkipInner
        )
        set "hash=%%H"
        goto SkipInner
    )
    :SkipInner
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
REM Save the error flag into a variable that persists after endlocal
set "finalError=%errorOccurred%"
endlocal
REM Check overall result
if "%finalError%"=="1" (
    echo.
    echo Warning! The program failed to partially evaluate the hash values for the files in the program folder, compatibility has been compromised.
) else (
    echo.
    echo Success! The program succeeded to evaluate the hash values for the files in the program folder.
)
goto catspallin
:ipcresett
echo Calling IP hard-reset framework...
echo Resetting IP configuration...
echo Releasing IP Configuration...
ipconfig /release
IF %errorlevel%==1 (
   echo Warning! The program failed to release the ip configuration.
) ELSE (
echo Success! The program succeeded to release the ip configuration.
)
echo Re-newing IP Configuration...
ipconfig /renew
IF %errorlevel%==1 (
   echo Warning! The program failed to re-new the ip configuration.
) ELSE (
echo Success! The program succeeded to re-new the ip configuration.
)
echo Flushing DNS cache...
ipconfig /flushdns
IF %errorlevel%==1 (
   echo Warning! The program failed to flush the DNS cache.
) ELSE (
echo Success! The program succeeded to flush the DNS cache.
)
echo Re-registering DNS...
ipconfig /registerdns
IF %errorlevel%==1 (
   echo Warning! The program failed to re-register DNS.
) ELSE (
echo Success! The program succeeded to re-register DNS.
)
echo [INFO] internet protocol adress configuration hard reset complete.
goto catspallin
:dsrhexx
setlocal enabledelayedexpansion
echo Calling routing tabel...
netstat -r
IF %errorlevel%==1 (
   echo Warning! The program failed to get the routing tabel with netstat. attempting route print command...
   route print
) ELSE (
echo Success! The program succeeded to get the routing tabel with the netstat -r command.
)
echo NOTE: IPv6 routes require both the prefix and the interface to delete!
echo Listing available interfaces...
netsh interface show interface
SET /P targetdeletev6=Enter the IPv6 destination prefix of the route you wish to delete e.g. [2001:db8:abcd::/64]:
SET /P interfacedeletev6=Enter the interface name or index this route is bound to e.g. [Ethernet]:
netsh interface ipv6 delete route %targetdeletev6% "%interfacedeletev6%"
IF %errorlevel%==1 (
   echo Warning! The program failed to delete the IPv6 static route with the netsh delete command.
   echo IPV6 DEST PREFIX: %targetdeletev6%
   echo INTERFACE: %interfacedeletev6%
) ELSE (
echo Success! The program succeeded to delete the IPv6 static route with the netsh delete command.
)
endlocal
goto catspallin
:delstaticroute
setlocal enabledelayedexpansion
echo Calling routing tabel...
netstat -r
IF %errorlevel%==1 (
   echo Warning! The program failed to get the routing tabel with netstat. attempting route print command...
   route print
) ELSE (
echo Success! The program succeeded to get the routing tabel with the netstat -r command.
)
SET /P targetdeletrouttab=Enter the destination network of the route you wish to delete e.g. [192.168.1.0]:
route delete %targetdeletrouttab%
IF %errorlevel%==1 (
   echo Warning! The program failed to delete the static route with the route delete command.
   echo DESTINATION NETWORK: %targetdeletrouttab%
) ELSE (
echo Success! The program succeeded to delete the static route with the route delete command.
)
endlocal
goto catspallin
:asrhexx
setlocal enabledelayedexpansion
echo Calling static IPv6 route add framework...
echo Calling routing table...
netstat -r
IF %errorlevel%==1 (
   echo Warning! The program failed to get the routing table with netstat. attempting route print command...
   route print
) ELSE (
echo Success! The program succeeded to get the routing table with the netstat -r command.
)
echo NOTE: IPv6 uses prefixes instead of subnet masks!
echo Listing available interfaces...
netsh interface show interface
SET /P destnetv6=Enter the IPv6 destination prefix e.g. [2001:db8:abcd::/64]:
SET /P ipv6gateway=Enter the IPv6 next-hop gateway e.g. [fe80::1]:
SET /P interfacev6=Enter the interface name or index to bind the route to e.g. [Ethernet]:
netsh interface ipv6 add route %destnetv6% "%interfacev6%" %ipv6gateway% store=persistent
IF %errorlevel%==1 (
   echo Warning! The program failed to add the IPv6 route to the system with netsh.
   echo IPV6 DEST PREFIX: %destnetv6%
   echo IPV6 GATEWAY: %ipv6gateway%
   echo INTERFACE: %interfacev6%
) ELSE (
echo Success! The program succeeded to add the IPv6 route to the system with the netsh command.
)
echo To check if the route exists, use "grt".
endlocal
goto catspallin
:addstaticroutes
setlocal enabledelayedexpansion
echo Calling static route add framework...
echo Calling routing tabel...
netstat -r
IF %errorlevel%==1 (
   echo Warning! The program failed to get the routing tabel with netstat. attempting route print command...
   route print
) ELSE (
echo Success! The program succeeded to get the routing tabel with the netstat -r command.
)
SET /P destnetrout=Enter the destination network e.g. [192.168.1.0]:
SET /P netmaskinrouteform=Enter the subnet mask of the destination network e.g. [255.255.255.0]:
SET /P defaultgatetoaddrt=Enter the default gateway of your current local network e.g. [192.168.1.254]:
route -p add %destnetrout% mask %netmaskinrouteform% %defaultgatetoaddrt%
IF %errorlevel%==1 (
   echo Warning! The program failed to add the route to the system with the route add command.
   echo DESTINATION NETWORK: %destnetrout%
   echo NETMASK: %netmaskinrouteform%
   echo DFGW: %defaultgatetoaddrt%
) ELSE (
echo Success! The program succeeded to add the route to the system with the route add command..
)
echo to check if the route exists use "grt".
endlocal
goto catspallin
:groutetabb
setlocal enabledelayedexpansion
echo Calling routing tabel show framework...
echo "a" the netstat -r routing tabel
echo "b" the route print routing tabel
:invalidopgivenadccselct
SET /P operationadccselct=Enter the preferred operation e.g. [a], [b] or [X] to return to menu:
IF %operationadccselct%==a goto routetabopa
IF %operationadccselct%==b goto routetabopb
IF %operationadccselct%==A goto routetabopa
IF %operationadccselct%==B goto routetabopb
IF %operationadccselct%==x goto catspallin
IF %operationadccselct%==X goto catspallin
echo Warning! invalid operation use a or b.
goto invalidopgivenadccselct
:routetabopa
echo Calling routing tabel with netstat -r...
netstat -r
IF %errorlevel%==1 (
   echo Warning! The program failed to get the routing tabel with netstat -r.
) ELSE (
echo Success! The program succeeded to get the routing tabel with netstat -r.
)
endlocal
goto catspallin
:routetabopb
echo Calling routing tabel with route print...
route print
IF %errorlevel%==1 (
   echo Warning! The program failed to get the routing tabel with route print.
) ELSE (
echo Success! The program succeeded to get the routing tabel with route print.
)
endlocal
goto catspallin
:mtransmitt
echo Calling the Mass-Transmit framework...
setlocal enabledelayedexpansion
set "TX_LIST=%~dp0folderTXlist.txt"
set "RX_LIST=%~dp0folderRXlist.txt"
set "PROGRESS_LOG=%~dp0transfer_progress.log"
set "TERMINATE_FLAG=%~dp0terminate.flag"
set "TRANSFER_MODE=copy"     :: default mode
:mtransmitmenu
echo                               __                                  _ __ 
echo    ____ ___  ____ ___________/ /__________ _____  _________ ___  ^(_^) /_
echo   / __ `__ \/ __ `/ ___/ ___/ __/ ___/ __ `/ __ \/ ___/ __ `__ \/ / __/
echo  / / / / / / /_/ ^(__  ^|__  ) /_/ /  / /_/ / / / ^(__  ^) / / / / / / /_  
echo /_/ /_/ /_/\__,_/____/____/\__/_/   \__,_/_/ /_/____/_/ /_/ /_/_/\__/  
echo            [FOLDER TRANSFER SYSTEM]
echo Current transfer mode: %TRANSFER_MODE%
echo.
echo [MASS TRANSFER COMMANDS]
echo   "edit_path_ways"       - Enter / Edit TX and RX folder paths
echo   "transfer_initiate"    - Transfer TX folder contents to RX folders
echo   "inspect_progress"     - View what the system is currently doing
echo   "terminate_operations" - Force-stop an ongoing transfer
echo   "set_transfer_mode"    - Choose COPY or MOVE behavior
echo   "exit"                 - Quit
echo.
set /p "menuchoice=Select option > "
if /i "%menuchoice%"=="edit_path_ways" goto edit_pathsium
if /i "%menuchoice%"=="transfer_initiate" goto transferiumx
if /i "%menuchoice%"=="inspect_progress" goto inspectilax
if /i "%menuchoice%"=="terminate_operations" goto terminatedium
if /i "%menuchoice%"=="set_transfer_mode" goto set_modeauxiltransmit
if /i "%menuchoice%"=="exit" goto catspallin
echo Warning! Invalid input
goto mtransmitmenu
:set_modeauxiltransmit
echo SET TRANSFER MODE
echo.
echo Choose transfer method:
echo    copy_mode  - Copy files from TX to RX (keep originals)
echo    move_mode  - Move files from TX to RX (delete originals)
echo.
set /p "mode_sel=Select mode > "
if /i "%mode_sel%"=="copy_mode" (
    set "TRANSFER_MODE=copy"
    echo Transfer mode set to COPY.
    goto mtransmitmenu
)
if /i "%mode_sel%"=="move_mode" (
    set "TRANSFER_MODE=move"
    echo Transfer mode set to MOVE.
    goto mtransmitmenu
)
echo Invalid selection.
goto set_mode
:edit_pathsium
echo EDIT and ENTER FOLDER PATHWAYS
echo.
echo Type TX folders and matching RX folders.
echo Type ^'return^' as TX path to finish.
echo.
if exist "%TX_LIST%" del "%TX_LIST%"
if exist "%RX_LIST%" del "%RX_LIST%"
:edit_loop
set "TX="
set /p "TX=Enter TX folder path (or 'return' to finish) > "
if /i "%TX%"=="return" goto mtransmitmenu
if not defined TX (
    echo Empty TX ignored.
    goto edit_loop
)
set "RX="
set /p "RX=Enter RX folder path for this TX > "
if not defined RX (
    echo Empty RX ignored.
    goto edit_loop
)
echo %TX%>>"%TX_LIST%"
echo %RX%>>"%RX_LIST%"
echo Stored TX to RX mapping.
goto edit_loop
:inspectilax
echo TRANSFER PROGRESS
if not exist "%PROGRESS_LOG%" (
    echo No progress log exists yet.
    pause
    goto mtransmitmenu
)
type "%PROGRESS_LOG%"
echo.
goto mtransmitmenu
:terminatedium
echo TERMINATING ONGOING OPERATION
echo TERMINATED > "%TERMINATE_FLAG%"
echo Termination flag written. Any running transfer will stop soon.
goto mtransmitmenu
:transferiumx
echo MASS FILE TRANSFER INITIATED
echo Transfer mode: %TRANSFER_MODE%
del "%PROGRESS_LOG%" >nul 2>&1
del "%TERMINATE_FLAG%" >nul 2>&1
echo Starting transfer... >> "%PROGRESS_LOG%"
if not exist "%TX_LIST%" (
    echo ERROR: TX list not found.
    echo ERROR: TX list not found. >> "%PROGRESS_LOG%"
    pause
    goto mtransmitmenu
)
if not exist "%RX_LIST%" (
    echo ERROR: RX list not found.
    echo ERROR: RX list not found. >> "%PROGRESS_LOG%"
    goto mtransmitmenu
)
set index=0
for /f "usebackq delims=" %%A in ("%TX_LIST%") do (
    set "TX[!index!]=%%A"
    set /a index+=1
)
set ridx=0
for /f "usebackq delims=" %%B in ("%RX_LIST%") do (
    set "RX[!ridx!]=%%B"
    set /a ridx+=1
)
if not "%index%"=="%ridx%" (
    echo ERROR: TX and RX lists mismatched.
    echo ERROR: List length mismatch. >> "%PROGRESS_LOG%"
    goto mtransmitmenu
)
set /a lastindex=index-1
for /l %%I in (0,1,%lastindex%) do (
    if exist "%TERMINATE_FLAG%" (
        echo ----- TERMINATION REQUESTED ----- >> "%PROGRESS_LOG%"
        echo Transfer halted.
        goto mtransmitmenu
    )
    set "TXP=!TX[%%I]!"
    set "RXP=!RX[%%I]!"
    if not defined TXP (
        rem skip empty
        continue
    )
    if not defined RXP (
        rem skip empty
        continue
    )
    echo TX: !TXP! >> "%PROGRESS_LOG%"
    echo RX: !RXP! >> "%PROGRESS_LOG%"
    if not exist "!TXP!" (
        echo ERROR: Missing TX folder !TXP!
        echo ERROR: TX missing. >> "%PROGRESS_LOG%"
        echo.
        rem skip to next
        continue
    )
    if not exist "!RXP!" (
        mkdir "!RXP!" >nul
        echo Created RX folder: !RXP! >> "%PROGRESS_LOG%"
    )
    echo Processing: !TXP! to !RXP!
    if /i "%TRANSFER_MODE%"=="copy" (
        echo Copy mode active >> "%PROGRESS_LOG%"
        xcopy "!TXP!\*" "!RXP!\" /E /I /Y >> "%PROGRESS_LOG%" 2>&1
    ) else (
        echo Move mode active >> "%PROGRESS_LOG%"
        move /Y "!TXP!\*" "!RXP!\" >> "%PROGRESS_LOG%" 2>&1
    )
    echo. >> "%PROGRESS_LOG%"
)
echo Finished mass file transmission.
echo Finished mass file transmission. >> "%PROGRESS_LOG%"
goto mtransmitmenu
:unveill
echo Checking system for auto startup programs...
echo [HKCU Run]
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" 2>nul | findstr . >nul
if errorlevel 1 (
    echo INFO! No auto startup programs found in [HKCU Run].
) else (
    reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" 2>nul
)
echo [HKCU RunOnce]
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" 2>nul | findstr . >nul
if errorlevel 1 (
    echo INFO! No auto startup programs found in [HKCU RunOnce].
) else (
    reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" 2>nul
)
echo [HKLM Run]
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" 2>nul | findstr . >nul
if errorlevel 1 (
    echo INFO! No auto startup programs found in [HKLM Run].
) else (
    reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" 2>nul
)
echo [HKLM RunOnce]
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" 2>nul | findstr . >nul
if errorlevel 1 (
    echo INFO! No auto startup programs found in [HKLM RunOnce].
) else (
    reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" 2>nul
)
echo [Current User Startup Folder]
set "cuStartup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
if exist "%cuStartup%" (
    dir /b "%cuStartup%" | findstr . >nul
    if errorlevel 1 (echo None) else dir /b "%cuStartup%"
) else (
    echo INFO! No auto startup programs found in [User Startup Folder],
)
echo [All Users Startup Folder]
set "allStartup=%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
if exist "%allStartup%" (
    dir /b "%allStartup%" | findstr . >nul
    if errorlevel 1 (echo INFO! No auto startup programs found in [All Users Startup Folder].) else dir /b "%allStartup%"
) else (
    echo INFO! No auto startup programs found in [All Users Startup Folder].
)
echo Done fetching all startup program information, returning to mainframe.
goto catspallin
:gauntlett
echo Calling the Gauntlet framework...
setlocal enabledelayedexpansion
chcp 65001 >nul
echo                                                ░██    ░██               ░██    
echo                                                ░██    ░██               ░██    
echo  ░████████  ░██████   ░██    ░██ ░████████  ░████████ ░██  ░███████  ░████████ 
echo ░██    ░██       ░██  ░██    ░██ ░██    ░██    ░██    ░██ ░██    ░██    ░██    
echo ░██    ░██  ░███████  ░██    ░██ ░██    ░██    ░██    ░██ ░█████████    ░██    
echo ░██   ░███ ░██   ░██  ░██   ░███ ░██    ░██    ░██    ░██ ░██           ░██    
echo  ░█████░██  ░█████░██  ░█████░██ ░██    ░██     ░████ ░██  ░███████      ░████ 
echo        ░██                                                                     
echo  ░███████
echo By Levi Santegoets.
echo.
chcp 437 >nul
echo [Warning] Scanning large directories could take up to hours to complete.
set /p EXT=Enter file extensions to look for, comma separated e.g. [.exe,.dll,.sys] or [.exe]:
set /p DRIVE=Enter the root drive or directory to look in e.g. [C:\] or [C:\Program Files]:
set FILELIST=%TEMP%\unsigned_files.txt
set TEMPFILE=%TEMP%\unsigned_scan.tmp
rem Clear temp files properly (no blank lines)
> "%FILELIST%" type nul
> "%TEMPFILE%" type nul
echo Scanning %DRIVE% for unsigned files...
rem Collect all matching files into FILELIST
for %%e in (%EXT%) do (
    for /r "%DRIVE%" %%f in (*%%e) do (
        echo %%f >> "%FILELIST%"
    )
)
rem Call PowerShell once, process the whole list
powershell -NoProfile -Command ^
    "Get-Content '%FILELIST%' | Where-Object {$_ -and $_.Trim() -ne ''} | ForEach-Object { if((Get-AuthenticodeSignature $_).Status -eq 'NotSigned'){ 'Warning! [UNSIGNED] ' + $_ } }" ^
    >> "%TEMPFILE%"
more "%TEMPFILE%"
del "%TEMPFILE%" >nul 2>&1
del "%FILELIST%" >nul 2>&1
echo [Info] Finished scanning %DRIVE%. for unsigned files matching extensions: %EXT%, returning to mainframe.
endlocal
goto catspallin
:md5evall
setlocal enabledelayedexpansion
echo Calling MD5 hash evaluation framework...
echo.
set "errorOccurred=0"
for /r "%~dp0" %%F in (*) do (
    set "file=%%~fF"
    set "hash="
    for /f "skip=1 delims=" %%H in ('certutil -hashfile "%%~fF" MD5 2^>nul') do (
        if "%%H"=="" (
            goto SkipInner
        )
        set "hash=%%H"
        goto SkipInner
    )
    :SkipInner
    if defined hash (
        echo !file! = !hash!
    ) else (
        echo Warning! could not hash !file!
        set "errorOccurred=1"
    )
)
REM Save the error flag into a variable that persists after endlocal
set "finalError=%errorOccurred%"
endlocal
REM Check overall result
if "%finalError%"=="1" (
    echo.
    echo Warning! The program failed to partially evaluate the hash values for the files in the program folder, compatibility has been compromised.
) else (
    echo.
    echo Success! The program succeeded to evaluate the hash values for the files in the program folder.
)
goto catspallin
:lansweepp
setlocal enabledelayedexpansion
SET /P NETWORK=Enter your local network prefix without the host octet e.g. [192.168.1]:
echo Scanning %NETWORK%.1-254 ...
for /L %%i in (1,1,254) do (
    ping -n 1 -w 200 %NETWORK%.%%i | find "TTL=" >nul
    if not errorlevel 1 (
        echo Alive: %NETWORK%.%%i
    )
)
echo.
echo ARP table (local MACs learned):
arp -a
endlocal
echo Local area network sweep completed.
echo Caution! If the ICMP protocol is blocked by the target its firewall, the host wont be up but can still exist.
goto catspallin
:portippktt
setlocal enabledelayedexpansion
echo Launching PacketMon framework...
SET /P targetipiumpktmonadcs=Enter the ip-adress to capture the packets of e.g. [192.168.1.1]:
SET /P targetportofpackmddcm=Enter the portnumber to monitor the traffic of e.g. [443]:
set "ts4=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "ts4=%ts4: =0%"
set "CAPFILE4=%TEMP%\pktmon_capture4_%ts4%.etl"
set "PCAPFILE4=%~dp0pktmon_capture4_%ts4%.pcapng"
echo Output will stream below. Press CTRL+C to stop capture.
pktmon filter remove
pktmon filter add -i %targetipiumpktmonadcs%
pktmon filter add -p %targetportofpackmddcm%
pktmon start --capture --comp nics --pkt-size 0 --file-name "%CAPFILE4%" --log-mode real-time
IF %errorlevel% NEQ 0 (
    echo Failed to start PacketMon. Check admin rights.
    goto :cleanup4
) ELSE (
    echo PacketMon started successfully.
)
echo Stopping PacketMon and converting to PCAPNG...
pktmon stop
IF %errorlevel% NEQ 0 (
    echo Failed to stop PacketMon.
    goto :cleanup4
) ELSE (
    echo PacketMon stopped successfully.
)
pktmon etl2pcap "%CAPFILE4%" --out "%PCAPFILE4%"
IF %errorlevel% NEQ 0 (
    echo Failed to convert ETL to PCAPNG.
    goto :cleanup4
) ELSE (
    echo Conversion successful.
)
echo Capture saved to: %PCAPFILE4%
echo Opening with default viewer...
start "" "%PCAPFILE4%"
IF %errorlevel% NEQ 0 (
    echo Failed to open PCAPNG file.
) ELSE (
    echo PCAPNG file opened successfully.
)
:cleanup4
echo Info! Cleaning up temporary ETL file...
del "%CAPFILE4%" >nul 2>&1
IF %errorlevel% NEQ 0 (
    echo Failed to delete ETL file.
) ELSE (
    echo ETL file deleted.
)
endlocal
goto catspallin
:getipportt
setlocal enabledelayedexpansion
echo Launching PacketMon framework...
SET /P targetportofpackmon=Enter the portnumber to monitor the traffic of e.g. [443]:
set "ts3=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "ts3=%ts3: =0%"
set "CAPFILE3=%TEMP%\pktmon_capture3_%ts3%.etl"
set "PCAPFILE3=%~dp0pktmon_capture3_%ts3%.pcapng"
echo Output will stream below. Press CTRL+C to stop capture.
pktmon filter remove
pktmon filter add -p %targetportofpackmon%
pktmon start --capture --comp nics --pkt-size 0 --file-name "%CAPFILE3%" --log-mode real-time
IF %errorlevel% NEQ 0 (
    echo Failed to start PacketMon. Check admin rights.
    goto :cleanup3
) ELSE (
    echo PacketMon started successfully.
)
echo Stopping PacketMon and converting to PCAPNG...
pktmon stop
IF %errorlevel% NEQ 0 (
    echo Failed to stop PacketMon.
    goto :cleanup3
) ELSE (
    echo PacketMon stopped successfully.
)
pktmon etl2pcap "%CAPFILE3%" --out "%PCAPFILE3%"
IF %errorlevel% NEQ 0 (
    echo Failed to convert ETL to PCAPNG.
    goto :cleanup3
) ELSE (
    echo Conversion successful.
)
echo Capture saved to: %PCAPFILE3%
echo Opening with default viewer...
start "" "%PCAPFILE3%"
IF %errorlevel% NEQ 0 (
    echo Failed to open PCAPNG file.
) ELSE (
    echo PCAPNG file opened successfully.
)
:cleanup3
echo Info! Cleaning up temporary ETL file...
del "%CAPFILE3%" >nul 2>&1
IF %errorlevel% NEQ 0 (
    echo Failed to delete ETL file.
) ELSE (
    echo ETL file deleted.
)
endlocal
goto catspallin
:getippackk
setlocal enabledelayedexpansion
echo Launching PacketMon framework...
SET /P targetippktmon=Enter the ipv4 or ipv6 adress to capture the traffic of e.g. [192.168.1.1] or [fe80::1a2b:3c4d:5e6f:7890]:
set "ts2=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "ts2=%ts2: =0%"
set "CAPFILE2=%TEMP%\pktmon_capture2_%ts2%.etl"
set "PCAPFILE2=%~dp0pktmon_capture2_%ts2%.pcapng"
echo Output will stream below. Press CTRL+C to stop capture.
pktmon filter remove
pktmon filter add -i %targetippktmon%
pktmon start --capture --comp nics --pkt-size 0 --file-name "%CAPFILE2%" --log-mode real-time
IF %errorlevel% NEQ 0 (
    echo Failed to start PacketMon. Check admin rights.
    goto :cleanup2
) ELSE (
    echo PacketMon started successfully.
)
echo Stopping PacketMon and converting to PCAPNG...
pktmon stop
IF %errorlevel% NEQ 0 (
    echo Failed to stop PacketMon.
    goto :cleanup2
) ELSE (
    echo PacketMon stopped successfully.
)
pktmon etl2pcap "%CAPFILE2%" --out "%PCAPFILE2%"
IF %errorlevel% NEQ 0 (
    echo Failed to convert ETL to PCAPNG.
    goto :cleanup2
) ELSE (
    echo Conversion successful.
)
echo Capture saved to: %PCAPFILE2%
echo Opening with default viewer...
start "" "%PCAPFILE2%"
IF %errorlevel% NEQ 0 (
    echo Failed to open PCAPNG file.
) ELSE (
    echo PCAPNG file opened successfully.
)
:cleanup2
echo Info! Cleaning up temporary ETL file...
del "%CAPFILE2%" >nul 2>&1
IF %errorlevel% NEQ 0 (
    echo Failed to delete ETL file.
) ELSE (
    echo ETL file deleted.
)
endlocal
goto catspallin
:getpacketss
setlocal enabledelayedexpansion
echo Launching PacketMon framework...
set "ts=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "ts=%ts: =0%"
set "CAPFILE=%TEMP%\pktmon_capture_%ts%.etl"
set "PCAPFILE=%~dp0pktmon_capture_%ts%.pcapng"
echo Output will stream below. Press CTRL+C to stop capture.
pktmon filter remove
pktmon start --capture --comp nics --pkt-size 0 --file-name "%CAPFILE%" --log-mode real-time
IF %errorlevel% NEQ 0 (
    echo Failed to start PacketMon. Check admin rights.
    goto :cleanup
) ELSE (
    echo PacketMon started successfully.
)
echo Stopping PacketMon and converting to PCAPNG...
pktmon stop
IF %errorlevel% NEQ 0 (
    echo Failed to stop PacketMon.
    goto :cleanup
) ELSE (
    echo PacketMon stopped successfully.
)
pktmon etl2pcap "%CAPFILE%" --out "%PCAPFILE%"
IF %errorlevel% NEQ 0 (
    echo Failed to convert ETL to PCAPNG.
    goto :cleanup
) ELSE (
    echo Conversion successful.
)
echo Capture saved to: %PCAPFILE%
echo Opening with default viewer...
start "" "%PCAPFILE%"
IF %errorlevel% NEQ 0 (
    echo Failed to open PCAPNG file.
) ELSE (
    echo PCAPNG file opened successfully.
)
:cleanup
echo Info! Cleaning up temporary ETL file...
del "%CAPFILE%" >nul 2>&1
IF %errorlevel% NEQ 0 (
    echo Failed to delete ETL file.
) ELSE (
    echo ETL file deleted.
)
endlocal
goto catspallin
:arcadegmm
echo DANGER! you are about to establish a connection trough SSH secure shell, this may endanger network and system security.
SET /P safebreakfivethousandanddee=Enter the following phrase to continue e.g. [synthetic_dawn]:
IF %safebreakfivethousandanddee%==synthetic_dawn echo "synthetic_dawn" was given as input, security break has been lifted. & goto nomorebreakinfunctionadcvvvv
echo Warning! invalid input given for last security paramitter, returning to mainframe.
goto catspallin
:nomorebreakinfunctionadcvvvv
ssh gameroom@bitreich.org
IF %errorlevel%==1 (
   echo Warning! The program failed to call the SSH session, make sure you have an internet connection, proper security clearance and SSH enabled.
) ELSE (
echo Success! The program succeeded to call the SSH session.
)
goto catspallin
:reboott
echo Calling reboot from CMD...
shutdown /r /f /t 0
IF %errorlevel%==1 (
   echo Warning! The program failed to call CMD to reboot the windows system with force.
) ELSE (
echo Success! The program succeeded to call CMD to reboot the windows system with force.
)
goto catspallin
:playsnakee
echo DANGER! you are about to establish a connection trough SSH secure shell, this may endanger network and system security.
SET /P safebreakfivethousandanddcb=Enter the following phrase to continue e.g. [synthetic_dawn]:
IF %safebreakfivethousandanddcb%==synthetic_dawn echo "synthetic_dawn" was given as input, security break has been lifted. & goto nomorebreakinfunctionadcvfgb
echo Warning! invalid input given for last security paramitter, returning to mainframe.
goto catspallin
:nomorebreakinfunctionadcvfgb
ssh sshtron.zachlatta.com
IF %errorlevel%==1 (
   echo Warning! The program failed to call the SSH session, make sure you have an internet connection, proper security clearance and SSH enabled.
) ELSE (
echo Success! The program succeeded to call the SSH session.
)
goto catspallin
:sshchatt
echo DANGER! you are about to establish a connection trough SSH secure shell, this may endanger network and system security.
SET /P safebreakfivethousandandacb=Enter the following phrase to continue e.g. [synthetic_dawn]:
IF %safebreakfivethousandandacb%==synthetic_dawn echo "synthetic_dawn" was given as input, security break has been lifted. & goto nomorebreakinfunctionadcvfgd
echo Warning! invalid input given for last security paramitter, returning to mainframe.
goto catspallin
:nomorebreakinfunctionadcvfgd 
ssh chat.shazow.net
IF %errorlevel%==1 (
   echo Warning! The program failed to call the SSH session, make sure you have an internet connection, proper security clearance and SSH enabled.
) ELSE (
echo Success! The program succeeded to call the SSH session.
)
goto catspallin
:clearcurrencyterminalium
cls
:gctt
echo calling currency rates from rate.sx... Enter "X" to return to menu or "cls" to clear the terminal.
curl rate.sx
IF %errorlevel%==1 (
   echo Warning! The program failed to call currency rates from rate.sx, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to call currency rates from  rate.sx.
)
:rewindgctt
SET /P ctinspectc=Enter the currency to inspect e.g. [BTC] or Enter the interval specification e.g. [/btc@10d], [/eth@4w], [/xrp@January] or [/:help]:
curl rate.sx/%ctinspectc%
IF %ctinspectc%==X echo "X" was given as value for last paramitter, returning to mainframe. & goto catspallin
IF %ctinspectc%==x echo "x" was given as value for last paramitter, returning to mainframe. & goto catspallin
IF %ctinspectc%==cls echo "cls" was given as value for last paramitter, clearing terminal. & goto clearcurrencyterminalium
IF %errorlevel%==1 (
   echo Warning! The program failed to call rate.sx, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to call rate.sx.
)
goto rewindgctt
:detectvlann
echo calling powershell to detect VLAN information...
powershell -command "Get-NetAdapter | Select Name, InterfaceDescription, VlanID
IF %errorlevel%==1 (
   echo Warning! The program failed to call powershell to detect VLAN information.
) ELSE (
echo Success! The program succeeded to call powershell to detect VLAN information..
)
goto catspallin
:sysinfmgmtt
echo calling system information...
msinfo32
IF %errorlevel%==1 (
   echo Warning! The program failed to call system information.
) ELSE (
echo Success! The program succeeded to call system information.
)
goto catspallin
:compmgmtt
echo callin computer management...
compmgmt.msc
IF %errorlevel%==1 (
   echo Warning! The program failed to call computer management.
) ELSE (
echo Success! The program succeeded to call computer management.
)
goto catspallin
:prefmonn
echo calling preformance monitor...
perfmon
IF %errorlevel%==1 (
   echo Warning! The program failed to call preformance monitor.
) ELSE (
echo Success! The program succeeded to call preformance monitor.
)
goto catspallin
:gpeditorr
echo calling group policy editor...
gpedit.msc
IF %errorlevel%==1 (
   echo Warning! The program failed to call group policy editor.
) ELSE (
echo Success! The program succeeded to call group policy editor.
)
goto catspallin
:eventvii
echo calling event viewer...
eventvwr.msc
IF %errorlevel%==1 (
   echo Warning! The program failed to call event viewer.
) ELSE (
echo Success! The program succeeded to call event viewer.
)
goto catspallin
:devmgmtt
echo calling device management...
devmgmt.msc
IF %errorlevel%==1 (
   echo Warning! The program failed to call device management.
) ELSE (
echo Success! The program succeeded to call device management.
)
goto catspallin
:sysservv
echo calling system services...
services.msc
IF %errorlevel%==1 (
   echo Warning! The program failed to call system services.
) ELSE (
echo Success! The program succeeded to call system services.
)
goto catspallin
:regeditor
echo calling registry editor...
regedit
IF %errorlevel%==1 (
   echo Warning! The program failed to call registry editor.
) ELSE (
echo Success! The program succeeded to call registry editor.
)
goto catspallin
:taskmgrr
echo calling task manager...
taskmgr
IF %errorlevel%==1 (
   echo Warning! The program failed to call task manager.
) ELSE (
echo Success! The program succeeded to call task manager.
)
goto catspallin
:mmcc
echo calling microsoft management console...
mmc
IF %errorlevel%==1 (
   echo Warning! The program failed to call microsoft management console.
) ELSE (
echo Success! The program succeeded to call microsoft management console.
)
goto catspallin
:msconfigg
echo calling MSConfig...
msconfig
IF %errorlevel%==1 (
   echo Warning! The program failed to call MSConfig.
) ELSE (
echo Success! The program succeeded to call MSConfig.
)
goto catspallin
:mrtt
echo calling MRT...
mrt
IF %errorlevel%==1 (
   echo Warning! The program failed to call MRT.
) ELSE (
echo Success! The program succeeded to call MRT.
)
goto catspallin
:dnshexx
echo CAUTION! This option overwrites the DNS servers of a network interface if the index value is 0, this could destroy any proper configuration.
echo to return to menu input: "abort".
echo calling network interfaces...
netsh interface show interface
IF %errorlevel%==1 (
   echo Warning! The program failed to call network interfaces.
) ELSE (
echo Success! The program succeeded to call network interfaces.
)
echo calling DNS servers configured for each network interface...
netsh interface ipv6 show dnsservers
IF %errorlevel%==1 (
   echo Warning! The program failed to call the DNS servers of the network interfaces.
) ELSE (
echo Success! The program succeeded to call the DNS servers of the network interfaces.
)
SET /P intrfctochanghexdnsof=Enter the name of the interface you would like to set the dns server of e.g. [flappyinterface]:
IF %intrfctochanghexdnsof%==abort echo "abort" was given as value for network interface, returning to menu. & goto catspallin
SET /P ipvsixadressofdnsservforhexium=Enter the internet protocol version six value e.g. [2606:4700:4700::1111]:
SET /P interfaceindexnumberhexdnsform=Enter the index number for the dns server, for first use [0]:
IF "%interfaceindexnumberhexdnsform%"=="0" (
    netsh interface ipv6 set dnsservers name="%intrfctochanghexdnsof%" static %ipvsixadressofdnsservforhexium%
    IF %errorlevel%==0 (
        echo Success! The program succeeded to set the DNS server for %intrfctochanghexdnsof%.
    ) ELSE (
        echo Warning! The program failed to set the DNS server for %intrfctochanghexdnsof%.
        echo Make sure you used the correct IPv6 format or interface name.
    )
)
IF %interfaceindexnumberhexdnsform%==0 goto catspallin
netsh interface ipv6 set dnsservers name="%intrfctochanghexdnsof%" static %ipvsixadressofdnsservforhexium% index=%interfaceindexnumberhexdnsform%
IF %errorlevel%==1 (
   echo Warning! The program failed to set the DNS server for %intrfctochanghexdnsof%, make sure you used the hex format.
) ELSE (
echo Success! The program succeeded to set the DNS server for the interface.
)
goto catspallin
:fetchlinkss
SET /P domaintofetchlinksofwithcurl=Enter the domain, ip-adress or URL of the site to fetch the URLs of e.g. [www.google.com]:
curl -s "https://api.hackertarget.com/pagelinks/?q=%domaintofetchlinksofwithcurl%"
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the URLs, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the URLs.
)
goto catspallin
:findgiff
SET /P nameofgiftofindgifium=Enter the name of the gif you are looking for e.g. [homer_bushes]:
curl gif.xyzzy.run/%nameofgiftofindgifium%
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the GIF with curl, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch GIF with curl.
)
goto catspallin
:initnyann
curl ascii.live/nyan
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch nyan cat, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch nyan cat.
)
goto catspallin
:hackernewsss
cls
:hackernewss
curl gopher://hngopher.com:70
:reloophacknewsium
SET /P hacknewoperatium=Enter the hackernews command e.g. [gopher://hngopher.com/1/archive], [X] for menu or [cls] to clear terminal:
IF %hacknewoperatium%==X goto catspallin
IF %hacknewoperatium%==x goto catspallin
IF %hacknewoperatium%==cls goto hackernewsss
curl %hacknewoperatium%
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the curl command, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the curl command.
)
goto reloophacknewsium
:cheatshhhh
cls
:cheatshh
curl cheat.sh
:reloopiusolsulum
SET /P cheatshhoperation=Enter the cheat.sh command e.g. [cht.sh/:help], [X] for menu or [cls] to clear terminal:
IF %cheatshhoperation%==X goto catspallin
IF %cheatshhoperation%==x goto catspallin
IF %cheatshhoperation%==cls goto cheatshhhh
curl %cheatshhoperation%
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the curl command, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the curl command.
)
goto reloopiusolsulum
:adsbb
setlocal
set "jq_url=https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe"
set "jq_path=%~dp0jq.exe"
set "output_file=%~dp0adsb_output.txt"
set "raw_json=%~dp0raw.json"
set "log_file=%~dp0adsb_debug.log"
if not exist "%jq_path%" (
    echo jq not found. Downloading jq... >> "%log_file%"
    powershell -Command "Invoke-WebRequest -Uri '%jq_url%' -OutFile '%jq_path%'" >> "%log_file%" 2>&1
    if exist "%jq_path%" (
        echo jq downloaded successfully. >> "%log_file%"
    ) else (
        echo ERROR: jq download failed. >> "%log_file%"
        type "%log_file%"
        exit /b 1
    )
)
echo Fetching raw JSON from OpenSky... >> "%log_file%"
curl -s "https://opensky-network.org/api/states/all" > "%raw_json%"
if exist "%raw_json%" (
    echo Raw JSON saved to raw.json >> "%log_file%"
) else (
    echo ERROR: Failed to fetch JSON from OpenSky. >> "%log_file%"
    type "%log_file%"
    exit /b 1
)
echo Running jq to format output... >> "%log_file%"
"%jq_path%" -r ".states[]? | \"ICAO24: \(. [0] // \"\")\nCallsign: \(. [1] // \"\")\nOrigin Country: \(. [2] // \"\")\nTime Position: \(. [3] // \"\")\nLast Contact: \(. [4] // \"\")\nLongitude: \(. [5] // \"\")\nLatitude: \(. [6] // \"\")\nBaro Altitude: \(. [7] // \"\")\nOn Ground: \(. [8] // \"\")\nVelocity: \(. [9] // \"\")\nHeading: \(. [10] // \"\")\nVertical Rate: \(. [11] // \"\")\nGeo Altitude: \(. [13] // \"\")\nSquawk: \(. [14] // \"\")\nSpi: \(. [15] // \"\")\nPosition Source: \(. [16] // \"\")\n---\"" "%raw_json%" > "%output_file%" 2>> "%log_file%"
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: jq failed to parse JSON. See log for details. >> "%log_file%"
    type "%log_file%"
    exit /b 1
)
type "%output_file%" | more
echo Cleaning up... >> "%log_file%"
del /f /q "%jq_path%" >> "%log_file%" 2>&1
del /f /q "%output_file%" >> "%log_file%" 2>&1
del /f /q "%raw_json%" >> "%log_file%" 2>&1
del /f "%log_file%"
endlocal
goto catspallin
:badipp
setlocal enabledelayedexpansion
echo.
echo Level 1 = minimal, reliable malicious IPs (few thousand).
echo Level 2 = much bigger, more aggressive (hundreds of thousands).
echo.
set /p levelofipfindersab=Enter the level of search e.g. [1] , [2] or higher: 
for /f "tokens=* delims= " %%A in ("%levelofipfindersab%") do set levelofipfindersab=%%A
if "%levelofipfindersab%"=="" (
  echo No level entered. Exiting.
  goto :end
)
set "nonnum="
for /f "delims=0123456789" %%G in ("%levelofipfindersab%") do set "nonnum=%%G"
if defined nonnum (
  echo Invalid input: please enter a numeric level like 1 or 2.
  goto :badipp
)
set "url=https://iplists.firehol.org/files/firehol_level%levelofipfindersab%.netset"
echo Fetching: %url%
curl -fsS -L "%url%" | more
if errorlevel 1 (
  echo.
  echo Warning! The program failed to fetch the dangerous IP addresses. Check your network or URL.
) else (
  echo.
  echo Success! The program succeeded to fetch the dangerous IP addresses.
)
ENDLOCAL
goto catspallin
:badurll
setlocal enabledelayedexpansion
curl -s https://urlhaus.abuse.ch/downloads/csv_online/ | more
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the dangerous online URLs, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the dangerous online URLs.
)
ENDLOCAL
goto catspallin
:checkciphh
SET /P targetciphcheck=Enter the URL of the site to check the cipher, SSL and TLS info of e.g. [https://example.com]:
curl -vI %targetciphcheck% & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the cipher, SSL and TLS info of the URL, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the cipher, SSL and TLS info of the URL.
)
goto catspallin
:getrevdnss
curl https://api.ipify.org | nslookup
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch your ip-adress its reverse DNS, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch your ip-adress its reverse DNS.
)
goto catspallin
:myhostnmm
curl http://ipinfo.io/hostname
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch your external hostname, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch your external hostname.
)
goto catspallin
:pubipp
curl https://ifconfig.me & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch your public ip-adress, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch your public ip-adress.
)
goto catspallin
:rdaptrackk
SET /P draptargettotrack=Enter the public ip-adress or domain name of the adress you want the RDAP info of e.g. [8.8.8.8]:
curl -L "https://rdap.org/ip/%draptargettotrack%"
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the RDAP info of the public ip-adress or domain name, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the RDAP info of the public ip-adress or domain name.
)
goto catspallin
:getbgpipp
SET /P bgptargetip=Enter the public ip-adress or domain name to get the BGP info of e.g. [8.8.8.8]:
curl https://api.bgpview.io/ip/%bgptargetip% & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the BGP info of the public ip-adress or domain name, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the BGP info of the public ip-adress or domain name.
)
goto catspallin
:asnispipp
SET /P asnisptarget=Enter the public ip-adress or domain name to get the ASN and ISP info of e.g. [8.8.8.8]:
curl https://ipapi.co/%asnisptarget%/json/
IF %errorlevel%==1 (
   echo Warning! The program failed to fetch the ISP and ASN info of the public ip-adress or domain name, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to fetch the ISP and ASN info of the public ip-adress or domain name.
)
goto catspallin
:askquestt
SET /P questiontoaskthem=Enter the question to ask e.g. [who+is+john+mcafee]:
curl "https://api.duckduckgo.com/?q=%questiontoaskthem%&format=json"
IF %errorlevel%==1 (
   echo Warning! The program failed to ask duckduckgo.com your question, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to ask duckduckgo.com your question.
)
goto catspallin
:revgeolocc
SET /P latitudetarget=Enter the coordinates in latitude format e.g. [51.5074]:
SET /P longitudetarget=Enter the coordinates in longitude format e.g. [-0.1278]:
curl "https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=%latitudetarget%&longitude=%longitudetarget%&localityLanguage=en"
IF %errorlevel%==1 (
   echo Warning! The program failed to reverse the geolocation with the given coordinates, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to reverse the geolocation with the given coordinates.
)
goto catspallin
:isss
curl http://api.open-notify.org/iss-now.json
IF %errorlevel%==1 (
   echo Warning! The program failed to get the geolocation of the international space station, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to get the geolocation of the international space station.
)
goto catspallin
:checkhcc
setlocal enabledelayedexpansion
SET /P httpcodechecktarget=Enter the URL to check the HTTP codes of e.g. [https://example.com]:
curl -s -o NUL -w "HTTP %%{http_code}%" "!httpcodechecktarget!" & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to check the HTTP codes of the site, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to check the HTTP codes of the site.
)
endlocal
goto catspallin
:checkhandd
SET /P handcheckvar=Enter the URL to check TLS/SSL info aka handshake details of e.g. [https://example.com]:
curl -vI %handcheckvar%
IF %errorlevel%==1 (
   echo Warning! The program failed to check TLS/SSL info aka handshake details of the site, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to check TLS/SSL info aka handshake details of the site.
)
goto catspallin
:checkrslv
SET /P sitetoresolvefromgoogdns=Enter the site to check the DNS resolve of e.g. [https://example.com]
curl https://dns.google/resolve?name=%sitetoresolvefromgoogdns%
IF %errorlevel%==1 (
   echo Warning! The program failed to call the DNS resolve test for the site, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to call the DNS resolve test for the site.
)
goto catspallin
:getshh
SET /P sitetargetheaderget=Enter the URL of the website to get the HTTP headers from e.g. [https://example.com]:
curl -I %sitetargetheaderget%
IF %errorlevel%==1 (
   echo Warning! The program failed to call the HTTP headers for the site, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to call the HTTP headers.
)
goto catspallin
:telljokee
curl -H "Accept: text/plain" https://icanhazdadjoke.com/ & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to call random dad joke, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to call random dad joke.
)
goto catspallin
:giveadviced
curl https://api.adviceslip.com/advice & echo.
IF %errorlevel%==1 (
   echo Warning! The program failed to call random advice, make sure you have an internet connection.
) ELSE (
echo Success! The program succeeded to call random advice.
)
goto catspallin
:shutlists
echo calling shutdown function, make sure you have administrator privileges and active directory domain services is present.
shutdown -i
IF %errorlevel%==1 (
   echo Warning! The program failed to call the shutdown list function.
) ELSE (
echo Success! The program succeeded to call the shutdown list function.
)
goto catspallin
:geolocateion
SET /P iptogeolocatinprog=Enter the public internet protocol adress to geolocate e.g. [8.8.8.8]:
curl https://ipwho.is/%iptogeolocatinprog%
IF %errorlevel%==1 (
   echo Warning! The program failed to geolocate the ip-adress: %iptogeolocatinprog%
) ELSE (
echo Success! The program succeeded to geolocate the ip-adress: %iptogeolocatinprog% 
)
goto catspallin 
:pingipp
SET /P iptopingemnow=Enter the internet protocol adress or domain name to ping e.g. [127.0.0.1] or [www.google.com]:
ping %iptopingemnow%
IF %errorlevel%==1 (
   echo Warning! The program failed to execute the ping to ip-adress: %iptopingemnow%
) ELSE (
echo Success! The program succeeded to execute the ping to ip-adress: %iptopingemnow% 
)
goto catspallin
:spkee
:: Vraag om tekst
set /P tekstamonium=Enter the text that needs to be spoken in english. e.g. [hello world]:
:: Pad naar tijdelijk VBS-bestand
set "vbsfile=%temp%\tts.vbs"
:wowwebackmysonweinabcdeef
:: VBS-bestand aanmaken
echo Dim spk > "%vbsfile%"
echo Set spk = CreateObject("SAPI.SpVoice") >> "%vbsfile%"
echo For Each v In spk.GetVoices >> "%vbsfile%"
echo   If InStr(v.GetDescription, "Nederlands") > 0 Then spk.Voice = v >> "%vbsfile%"
echo Next >> "%vbsfile%"
echo spk.Speak "%tekstamonium%" >> "%vbsfile%"
:: VBScript uitvoeren
cscript //nologo "%vbsfile%"
:: Tijdelijk bestand verwijderen
del "%vbsfile%" >nul 2>&1
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:syslogg
echo ^> Calling log names. . .
wevtutil el
IF %errorlevel%==1 (
   echo Warning! The program failed to call all log names.
) ELSE (
echo Success! The program succeeded to call all log names. 
)
SET /P lognameinjectprompt=Enter the logname e.g. [System]:
wevtutil gl "%lognameinjectprompt%"
IF %errorlevel%==1 (
   echo Warning! The program failed to call the log info.
) ELSE (
echo Success! The program succeeded to call the log info. 
)
echo fetching content...
wevtutil qe "%lognameinjectprompt%" /f:text | more
IF %errorlevel%==1 (
   echo Warning! The program failed to get the content of this log.
) ELSE (
echo Success! The program succeeded to get the content of this log. 
)
if "%lognameinjectprompt%"=="" (
    echo Warning! NO INFO - NO CONTENT: lognameinjectprompt is empty!
    IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
    IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
    goto flappyloops
)
:flappyloops
IF %loggingoutput%==on wevtutil el >>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on wevtutil gl "%lognameinjectprompt%" >>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on wevtutil qe "%lognameinjectprompt%" /f:text >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:elevall
echo Caution! You are entering errorlevel evaluation mode. to return to menu enter: "abort". 
echo CURRENT ERRORLEVEL = %errorlevel%
SET /P injecterrorlevel=Enter the errorlevel you would like to use e.g. [0/1]:
IF %injecterrorlevel%==abort echo Warning! "abort" was given as value for errorlevel. aborting operation. & goto catspallin 
SET errorlevel=%injecterrorlevel% 
goto catspallin
REM IPCONFIG RECONSTRUCT
:netinfacee
netsh interface show interface
IF %errorlevel%==1 echo WARNING! network interfaces could not be called.
IF %loggingoutput%==on netsh interface show interface >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:macc
echo Warning! you are about to edit critical network configuration. to abort operation enter  "abort".
echo Calling mac adresses...
getmac /v /fo list
IF %errorlevel%==1 (
   echo Warning! The program failed to call any media access control adresses.
) ELSE (
echo Success! The program succeeded to call media access control adresses. 
)
setlocal enabledelayedexpansion
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: This script must be run as Administrator.
    goto catspallin
)
echo Running with administrative privileges.
echo.
:: --- 2) Show current adapters to help the user find the adapter name ---
echo Available network adapters (Name / NetConnectionID / DeviceID / MAC):
wmic nic get NetConnectionID,Name,DeviceID,MACAddress /format:table
echo.
echo NOTE: Use the "NetConnectionID" (e.g. "Ethernet" or "Wi-Fi"). If NetConnectionID is empty for your adapter, use the exact name shown in the table.
echo.
:: --- 3) Ask user for adapter (NetConnectionID) ---
set "ADAPTER="
set /p ADAPTER=Enter the adapter NetConnectionID (case-sensitive as shown): 
if "%ADAPTER%"=="abort" echo Warning! "abort" was given as value for NetConnectionID, aborting operation. & goto catspallin
if "%ADAPTER%"=="" (
    echo No adapter name provided. Exiting.
    exit /b 2
)
:: --- 4) Obtain adapter SettingID (NetCfgInstanceId) via WMIC ---
for /f "tokens=2 delims==" %%A in ('wmic nic where ^(NetConnectionID^="%ADAPTER%"^) get SettingID /value 2^>nul ^| find "="') do set "SETTINGID=%%A"
if not defined SETTINGID (
    echo ERROR: Could not find a SettingID for adapter "%ADAPTER%".
    echo Make sure you typed the NetConnectionID exactly, or check if the adapter is NetEnabled.
    exit /b 3
)
rem trim potential spaces
set "SETTINGID=%SETTINGID: =%"
echo Found SettingID: %SETTINGID%
echo.
:: --- 5) Locate the correct registry subkey under the network class GUID ---
set "CLASSKEY=HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}"
set "FOUNDKEY="
for /L %%i in (0,1,99) do (
    set "num=000%%i"
    set "sub=!num:~-4!"
    reg query "%CLASSKEY%\!sub!" /v NetCfgInstanceId >nul 2>&1
    if !errorlevel! == 0 (
        for /f "tokens=3*" %%V in ('reg query "%CLASSKEY%\!sub!" /v NetCfgInstanceId ^| find "NetCfgInstanceId"') do (
            set "REGVAL=%%W"
        )
        rem strip spaces from REGVAL
        set "REGVAL=!REGVAL: =!"
        if /i "!REGVAL!"=="%SETTINGID%" (
            set "FOUNDKEY=%CLASSKEY%\!sub!"
            goto :FOUND_REGKEY
        )
    )
)
:FOUND_REGKEY
if not defined FOUNDKEY (
    echo ERROR: Could not locate registry subkey for adapter %ADAPTER%.
    exit /b 4
)
echo Registry key found: %FOUNDKEY%
echo.
:: --- 6) Ask whether to set a MAC or reset ---
echo Enter a new MAC address (12 hex digits). You may use colons or dashes (they will be removed).
echo To restore the adapter's original MAC (delete override), type: reset
set /p NEWMAC=MAC (or "reset"): 
if "%NEWMAC%"=="" (
    echo Warning! No input provided. Returning to mainframe.
    goto catspallin
)
if /i "%NEWMAC%"=="reset" goto :DO_RESET
:: --- 7) Normalize MAC: remove - and : and spaces, convert to uppercase ---
set "MAC=%NEWMAC:-=%"
set "MAC=%MAC::=%"
set "MAC=%MAC: =%"
set "MAC=%MAC:~0,12%"  :: ensure we don't accidentally keep trailing chars
for /f "tokens=* delims=" %%M in ('cmd /c echo %MAC%') do set "MAC=%%M"
set "MAC=%MAC: =%"
set "MAC=%MAC:~0,12%"
:: --- 8) Validate length (12) and hex characters ---
if not "%MAC:~11,1%"=="" (
    rem length >= 12, ensure exactly 12 characters
    rem ensure no extra characters were left; check length by comparing substring
    if "%MAC:~12,1%" neq "" (
        echo ERROR: MAC must be exactly 12 hex characters. You entered more.
        goto catspallin
    )
) else (
    echo ERROR: MAC must be exactly 12 hex characters. You entered less.
    goto catspallin
)
echo %MAC% | findstr /r /i "[^0-9A-F]" >nul
if %errorlevel%==0 (
    echo ERROR: MAC contains invalid characters. Use only 0-9 and A-F.
    goto catspallin
)
:: --- 9) Confirm action ---
echo.
echo You are about to set adapter "%ADAPTER%" to MAC !MAC! via registry key:
echo   %FOUNDKEY%
set /p CONFIRM=Proceed? (Y/N): 
if /i not "%CONFIRM%"=="Y" (
    echo Aborted by user.
    goto catspallin
)
:: --- 10) Write registry value NetworkAddress ---
reg add "%FOUNDKEY%" /v NetworkAddress /t REG_SZ /d !MAC! /f >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Failed to write registry value.
    goto catspallin
)
IF %loggingoutput%==on reg add "%FOUNDKEY%" /v NetworkAddress /t REG_SZ /d !MAC! /f >nul 2>& >>%~dp0manowaroutputlog.txt
echo Registry updated.
:: --- 11) Restart network adapter (disable/enable) ---
echo Disabling adapter "%ADAPTER%"...
netsh interface set interface name="%ADAPTER%" admin=disabled >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Failed to disable adapter. You may need to disable/enable manually or reboot.
    echo Attempting to continue...
) else (
    echo Adapter disabled.
)
timeout /t 2 >nul
echo Enabling adapter "%ADAPTER%"...
netsh interface set interface name="%ADAPTER%" admin=enabled >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Failed to enable adapter. You may need to enable manually or reboot.
    goto catspallin
)
echo Adapter restarted. Verify with:
echo   ipconfig /all
echo   getmac /v /fo list
echo.
echo Done. If the new MAC does not appear, try rebooting or check driver restrictions.
exit /b 0
:: --------------------
:: Reset branch: delete registry value and restart adapter
:DO_RESET
echo You chose to RESET the registry override for adapter "%ADAPTER%".
set /p CONF2=Really delete NetworkAddress value and restore default? (Y/N): 
if /i not "%CONF2%"=="Y" (
    echo Aborted by user.
    goto catspallin
)
reg delete "%FOUNDKEY%" /v NetworkAddress /f >nul 2>&1
if %errorlevel% neq 0 (
    echo WARNING: Failed to delete NetworkAddress value (it may not exist). Continuing.
) else (
    echo NetworkAddress deleted.
)
echo Restarting adapter "%ADAPTER%"...
netsh interface set interface name="%ADAPTER%" admin=disabled >nul 2>&1
timeout /t 2 >nul
netsh interface set interface name="%ADAPTER%" admin=enabled >nul 2>&1
echo Done. calling mac adress states...
get mac
IF %errorlevel%==1 (
   echo Warning! The program failed to call mac adresses
) ELSE (
echo Success! The program succeeded to call mac adresses
)
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ipv44
echo Warning! you are about to edit network infrastructure... to return to menu, enter "abort".
echo Calling current network interfaces...
netsh interface show interface
IF %errorlevel%==1 (
   echo Warning! The program failed to call network interfaces.
) ELSE (
echo Success! The program succeeded to call network interaces. 
)
SET /P infnameium=Enter the name of the network interface to edit the config of e.g. [flappyinterface]:
IF %infnameium%==abort echo "abort" was given as value for network interface, Aborting operation. & goto catspallin
SET /P ipadresnetinfa4=Enter the internet protocol version four value e.g. [127.0.0.1]:
SET /P netmaskinf4cnst=Enter the value for the subnetmask e.g. [255.255.255.255]:
SET /P ipv4dfgwvninface=Enter the adress of the default gateway e.g. [10.33.0.1]:
netsh interface ipv4 set address name="%infnameium%" static %ipadresnetinfa4% %netmaskinf4cnst% %ipv4dfgwvninface%
IF %errorlevel%==1 (
   echo Warning! The program failed to edit the network interface.
) ELSE (
echo Success! The program succeeded to edit the network interface. 
)
IF %loggingoutput%==on netsh interface ipv4 set address name="%infnameium%" static %ipadresnetinfa4% %netmaskinf4cnst% %ipv4dfgwvninface% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ipv66
echo Warning! you are about to edit network infrastructure... to return to menu, enter "abort".
netsh interface show interface
IF %errorlevel%==1 (
   echo Warning! The program failed to call network interfaces.
) ELSE (
echo Success! The program succeeded to call network interaces. 
)
SET /P ivintevsix=Enter the name of the network interface to edit e.g. [flappyinterface]:
IF %ivintevsix%==abort echo "abort" was given as value for network interface, Aborting operation. & goto catspallin
SET /P vitnievsixium=Enter the internet protocol version six value  e.g. [::1] or [0000:0000:0000:0000:0000:0000:0000:0001]:
SET /P prefixialus=Enter the value of the prefix that equals your preffered subnetmask e.g: [/64]:
SET /P dfgwialus=Enter the adress of the default gateway to use e.g [::1] or [0000:0000:0000:0000:0000:0000:0000:0001]:
netsh interface ipv6 set address "%ivintevsix%" %vitnievsixium% prefixlength=%prefixialus%
IF %errorlevel%==1 (
    echo Warning! The program failed to edit the interface.
) ELSE (
    echo Success! The program succeeded to edit the interface. 
)
echo starting operation to write path to default gateway...
netsh interface ipv6 add route ::/0 "%ivintevsix%" %dfgwialus%
IF %errorlevel%==1 (
    echo Warning! The program failed to edit the default gateway for interface: %ivintevsix%
) ELSE (
    echo Success! The program succeeded to edit the default route to default gateway: %ivintevsix%
)
IF %loggingoutput%==on netsh interface ipv6 set address "%ivintevsix%" %vitnievsixium% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dnss
echo calling ipconfiguration and dns information...
ipconfig /all
IF %errorlevel%==1 (
    echo Warning! The program failed to call ipconfiguration.
) ELSE (
    echo Success! The program succeeded to call ipconfiguration. 
)
netsh interface ip show dns
IF %errorlevel%==1 (
    echo Warning! The program failed to call dns information
) ELSE (
    echo Success! The program succeeded to call dns information. 
)
netsh interface show interface
IF %errorlevel%==1 (
    echo Warning! The program failed to call network interfaces
) ELSE (
    echo Success! The program succeeded to call network interfaces. 
)
SET /P apathydnsfunct=Enter the name of the network interface name to edit:
SET /P iptouseinasdnssev=Enter the internet protocol version four value e.g. [127.0.0.1]:
SET /P indexuilaisl=Enter the index value (number of dns servers for the network interface) e.g. [0] if first server:
IF %indexuilaisl%==0 netsh interface ip set dns name="%apathydnsfunct%" static %iptouseinasdnssev%
IF %errorlevel%==1 (
    echo Warning! The program failed to set the domain name system server.
) ELSE (
    echo Success! The program succeeded set the domain name system server. 
)
IF %indexuilaisl%==0 goto nullwasgivenwowabcdfghg 
netsh interface ip set dns name="%apathydnsfunct%" static %iptouseinasdnssev% index=%indexuilaisl%
IF %errorlevel%==1 (
    echo Warning! The program failed to set the domain name system server.
) ELSE (
    echo Success! The program succeeded set the domain name system server. 
)
:nullwasgivenwowabcdfghg
IF %loggingoutput%==on [CMD TARGET COMMAND] >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM POWERSHELL EXPERIMENTAL FUNCTION, YET TO BE TESTED.
:derpp
echo.
:activatiosaad
echo Reverting PowerShell Remoting configuration...
SET /P yesnoopbakcsendab=Do you wish to continu? y/n:
IF %yesnoopbakcsendab%==y goto activatiosaad
IF %yesnoopbakcsendab%==Y goto activatiosaad
IF %yesnoopbakcsendab%==N goto catspallin
IF %yesnoopbakcsendab%==n goto catspallin
echo invalid input, safety break.
goto activatiosaad
echo.
echo Stopping and disabling WinRM service...
sc stop winrm >nul 2>&1
sc config winrm start= disabled >nul 2>&1
echo Removing all WinRM listeners...
for /f "tokens=*" %%A in ('winrm enumerate winrm/config/listener 2^>nul ^| findstr /i "Transport"') do (
    for /f "tokens=2 delims==" %%B in ("%%A") do (
        for /f "tokens=* delims= " %%C in ("%%B") do (
            winrm delete winrm/config/Listener?Address=*+Transport=%%C >nul 2>&1
        )
    )
)
echo Disabling Windows Remote Management firewall rules...
netsh advfirewall firewall set rule group="Windows Remote Management" new enable=no >nul 2>&1
echo Disabling Remote Service Management firewall rules...
netsh advfirewall firewall set rule group="Remote Service Management" new enable=no >nul 2>&1
echo Disabling Remote Administration firewall rules...
netsh advfirewall firewall set rule group="Remote Administration" new enable=no >nul 2>&1
echo Resetting WinRM authentication settings...
winrm set winrm/config/service @{AllowUnencrypted="false"} >nul 2>&1
winrm set winrm/config/service/auth @{Basic="false"} >nul 2>&1
echo Resetting WinRM configuration to defaults...
winrm invoke Restore winrm/Config >nul 2>&1
echo.
echo PowerShell Remoting has been disabled and system settings restored.
echo.
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:erpp
:safetybreakersasaa
echo [WARNING] You are about to enable powershell remote command and script execution on this computer.
echo           The script enables system-wide PowerShell Remoting by starting and configuring the WinRM service,
echo           opening required firewall rules, and creating a listener so remote PowerShell commands can be received.
SET /P yesnoopbakcsend=Do you wish to continu? y/n:
IF %yesnoopbakcsend%==y goto activatiosaa
IF %yesnoopbakcsend%==Y goto activatiosaa
IF %yesnoopbakcsend%==N goto catspallin
IF %yesnoopbakcsend%==n goto catspallin
echo invalid input, safety break.
goto safetybreakersasaa
echo Enabling required services for PowerShell Remoting...
echo Enabling WinRM service...
sc config winrm start= auto >nul 2>&1
sc start winrm >nul 2>&1
echo Enabling Windows Remote Management firewall rule...
netsh advfirewall firewall set rule group="Windows Remote Management" new enable=yes >nul 2>&1
echo Enabling Remote Service Management firewall rule...
netsh advfirewall firewall set rule group="Remote Service Management" new enable=yes >nul 2>&1
echo Enabling Remote Administration firewall rule...
netsh advfirewall firewall set rule group="Remote Administration" new enable=yes >nul 2>&1
echo Checking WinRM listeners...
for /f "tokens=*" %%A in ('winrm enumerate winrm/config/listener 2^>nul ^| find /i "http://"') do set HASLISTENER=1
if not defined HASLISTENER (
    echo No listener found. Creating one...
    winrm quickconfig -q
) else (
    echo Listener already exists.
)
echo Configuring WinRM to allow remote requests...
winrm set winrm/config/service @{AllowUnencrypted="true"} >nul 2>&1
winrm set winrm/config/service/auth @{Basic="true"} >nul 2>&1
echo.
echo Current WinRM configuration summary:
winrm enumerate winrm/config/listener
echo.
echo PowerShell Remoting should now be available.
echo.
echo You can test this with:
echo     powershell Test-WSMan %COMPUTERNAME%
echo.
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM powershell session
:spcc
:: ==============================
:: spcc - Persistent PSSession batch wrapper
:: ==============================
setlocal enabledelayedexpansion
:: ---------- Base / workdir ----------
set "BASEDIR=%~dp0"
if not exist "%BASEDIR%" (
    echo ERROR: Unable to determine script path.
    exit /b 1
)
set "WORKDIR=%BASEDIR%_remote_temp"
if not exist "%WORKDIR%" mkdir "%WORKDIR%"
:: ---------- Debug log ----------
set "DEBUG_LOG=%WORKDIR%\debug.log"
echo [%DATE% %TIME%] Starting script. Working directory: %WORKDIR% > "%DEBUG_LOG%"
echo [%DATE% %TIME%] Initializing variables and paths. >> "%DEBUG_LOG%"
:: ---------- Session files ----------
set "SESSION_HOST_PS=%WORKDIR%\session_host.ps1"
set "SESSION_IN=%WORKDIR%\session_cmd_in.txt"
set "SESSION_OUT=%WORKDIR%\session_cmd_out.txt"
set "SESSION_STOP=%WORKDIR%\session_stop.txt"
set "SESSION_STATE=%WORKDIR%\session_state.txt"
set "CRED_FILE=%WORKDIR%\psrem_cred.xml"
echo [POWERSHELL REMOTE COMMANDS AND SCRIPT EXECUTION]
echo Working directory: %WORKDIR%
echo Debug log: %DEBUG_LOG%
echo.
goto mainloop
:definesession
:: ---------- Connection prompts ----------
set /p TARGET=Enter remote computer name e.g. [server01] or [127.0.0.1]:
if "%TARGET%"=="" (
    echo ERROR: Target cannot be empty.
    echo [%DATE% %TIME%] ERROR: Target empty. >> "%DEBUG_LOG%"
    goto :cleanup_exit
)
set /p DOMAIN=Enter the domain name or computername for local accounts e.g. [flappybird.local]:
if "%DOMAIN%"=="" (
    echo ERROR: Domain cannot be empty.
    echo [%DATE% %TIME%] ERROR: Domain empty. >> "%DEBUG_LOG%"
    goto :cleanup_exit
)
set /p USERNAME=Enter username e.g. [administrator]:
if "%USERNAME%"=="" (
    echo ERROR: Username cannot be empty.
    echo [%DATE% %TIME%] ERROR: Username empty. >> "%DEBUG_LOG%"
    goto :cleanup_exit
)
set "FULLUSER=%DOMAIN%\%USERNAME%"
echo [%DATE% %TIME%] Target: %TARGET%, Domain: %DOMAIN%, Username: %USERNAME%, FullUser: %FULLUSER% >> "%DEBUG_LOG%"
echo.
echo You will be prompted for the password in a PowerShell credential dialog.
echo (Credentials are encrypted to this Windows user in %CRED_FILE%)
powershell -NoProfile -Command ^
  "if (-not (Test-Path '%CRED_FILE%')) { $c = Get-Credential -UserName '%FULLUSER%' -Message 'Enter password for %FULLUSER%'; $c | Export-Clixml -Path '%CRED_FILE%'; Write-Host 'Credential saved.' } else { Write-Host 'Credential file exists.' }"
if errorlevel 1 (
  echo Failed to obtain credentials. Exiting.
  echo [%DATE% %TIME%] ERROR: Failed to obtain credentials. >> "%DEBUG_LOG%"
  goto :cleanup_exit
)
echo [%DATE% %TIME%] Credentials handled successfully. >> "%DEBUG_LOG%"
:: ---------- Write session host script line by line to ensure proper formatting ----------
echo [%DATE% %TIME%] Writing session host script line by line. >> "%DEBUG_LOG%"
echo $ErrorActionPreference = 'Stop' > "%SESSION_HOST_PS%"
echo $workdir = '%WORKDIR%' >> "%SESSION_HOST_PS%"
echo $debugLog = '%DEBUG_LOG%' >> "%SESSION_HOST_PS%"
echo $cred = Import-Clixml -Path '%CRED_FILE%' >> "%SESSION_HOST_PS%"
echo try { >> "%SESSION_HOST_PS%"
echo     Write-Host 'Creating PSSession to %TARGET%...' >> "%SESSION_HOST_PS%"
echo     (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' Creating PSSession to %TARGET%...' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo     $session = New-PSSession -ComputerName '%TARGET%' -Credential $cred -ErrorAction Stop >> "%SESSION_HOST_PS%"
echo     (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' PSSession created successfully.' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo } catch { >> "%SESSION_HOST_PS%"
echo     Write-Host 'ERROR creating session: ' + $_.Exception.Message >> "%SESSION_HOST_PS%"
echo     (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' ERROR creating session: ' + $_.Exception.Message ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo     exit 1 >> "%SESSION_HOST_PS%"
echo } >> "%SESSION_HOST_PS%"
echo $inFile = Join-Path $workdir 'session_cmd_in.txt' >> "%SESSION_HOST_PS%"
echo $outFile = Join-Path $workdir 'session_cmd_out.txt' >> "%SESSION_HOST_PS%"
echo $stopFile = Join-Path $workdir 'session_stop.txt' >> "%SESSION_HOST_PS%"
echo Write-Host 'Session host running...' >> "%SESSION_HOST_PS%"
echo (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' Session host running.' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo while ($true) { >> "%SESSION_HOST_PS%"
echo     if (Test-Path $stopFile) { >> "%SESSION_HOST_PS%"
echo         Remove-Item $stopFile -ErrorAction SilentlyContinue; >> "%SESSION_HOST_PS%"
echo         (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' Stop file detected, exiting loop.' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo         break >> "%SESSION_HOST_PS%"
echo     } >> "%SESSION_HOST_PS%"
echo     if (Test-Path $inFile) { >> "%SESSION_HOST_PS%"
echo         try { >> "%SESSION_HOST_PS%"
echo             $cmdText = Get-Content $inFile -Raw -ErrorAction Stop >> "%SESSION_HOST_PS%"
echo             Remove-Item $inFile -ErrorAction SilentlyContinue >> "%SESSION_HOST_PS%"
echo             (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' Executing command: ' + $cmdText ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo             $result = Invoke-Command -Session $session -ScriptBlock { param($c) Invoke-Expression $c } -ArgumentList $cmdText -ErrorAction Stop ^| Out-String >> "%SESSION_HOST_PS%"
echo             (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' Command executed successfully.' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo         } catch { >> "%SESSION_HOST_PS%"
echo             $result = 'ERROR: ' + $_.Exception.Message >> "%SESSION_HOST_PS%"
echo             (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' ERROR executing command: ' + $_.Exception.Message ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo         } >> "%SESSION_HOST_PS%"
echo         $result ^| Out-File -FilePath $outFile -Encoding utf8 >> "%SESSION_HOST_PS%"
echo     } >> "%SESSION_HOST_PS%"
echo     Start-Sleep -Milliseconds 200 >> "%SESSION_HOST_PS%"
echo } >> "%SESSION_HOST_PS%"
echo if ($session) { >> "%SESSION_HOST_PS%"
echo     Remove-PSSession -Session $session -ErrorAction SilentlyContinue >> "%SESSION_HOST_PS%"
echo     (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' PSSession removed.' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
echo } >> "%SESSION_HOST_PS%"
echo Write-Host 'Session host exiting.' >> "%SESSION_HOST_PS%"
echo (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + ' Session host exiting.' ^| Out-File -FilePath $debugLog -Append -Encoding utf8 >> "%SESSION_HOST_PS%"
if errorlevel 1 (
    echo Failed to write session host script.
    echo [%DATE% %TIME%] ERROR: Failed to write session host script. >> "%DEBUG_LOG%"
    goto :cleanup_exit
)
echo [%DATE% %TIME%] Script written successfully. >> "%DEBUG_LOG%"
:: Set permissions (ensure it's executable/readable by current user)
icacls "%SESSION_HOST_PS%" /grant "%USERNAME%:(F)" >nul 2>&1
if errorlevel 1 (
    echo Warning: Could not set permissions on script file.
    echo [%DATE% %TIME%] WARNING: Failed to set permissions on %SESSION_HOST_PS%. >> "%DEBUG_LOG%"
) else (
    echo [%DATE% %TIME%] Permissions set on script file. >> "%DEBUG_LOG%"
)
echo [%DATE% %TIME%] Session host script created successfully. >> "%DEBUG_LOG%"
goto mainloop
:: ---------- Helper subroutines ----------
:StartSession
if exist "%SESSION_STATE%" (
    echo Session already started:
    type "%SESSION_STATE%"
    set "sessionlife=on"
    for /f "usebackq tokens=1* delims=:" %%A in ("%SESSION_STATE%") do set "computernameofsession=%%B"
    echo [%DATE% %TIME%] Session already active for %computernameofsession%. >> "%DEBUG_LOG%"
    goto mainloop
)
echo Starting persistent PSSession host for %TARGET%...
echo [%DATE% %TIME%] Starting persistent PSSession host for %TARGET%. >> "%DEBUG_LOG%"
start "" /b powershell -NoProfile -ExecutionPolicy Bypass -File "%SESSION_HOST_PS%" >nul 2>&1
if errorlevel 1 (
    echo Failed to start session host.
    echo [%DATE% %TIME%] ERROR: Failed to start session host. >> "%DEBUG_LOG%"
    goto :eof
)
timeout /t 1 >nul
if exist "%SESSION_STATE%" (
    echo sessionlife:on>%SESSION_STATE%
    echo computer:%TARGET%>>%SESSION_STATE
    set "sessionlife=on"
    set "computernameofsession=%TARGET%"
    echo Session started.
    echo [%DATE% %TIME%] Session started for %TARGET%. >> "%DEBUG_LOG%"
) else (
    echo Session failed to start (state file not created).
    echo [%DATE% %TIME%] ERROR: Session failed to start - state file not created. >> "%DEBUG_LOG%"
)
goto mainloop
:StopSession
if not exist "%SESSION_STATE%" (
    echo No active session to stop.
    echo [%DATE% %TIME%] No active session to stop. >> "%DEBUG_LOG%"
    goto :main loop
)
echo Stopping persistent session...
echo [%DATE% %TIME%] Stopping persistent session for %computernameofsession%. >> "%DEBUG_LOG%"
type NUL > "%SESSION_STOP%"
timeout /t 1 >nul
if exist "%SESSION_IN%" del "%SESSION_IN%" >nul 2>&1
if exist "%SESSION_OUT%" del "%SESSION_OUT%" >nul 2>&1
if exist "%SESSION_STOP%" del "%SESSION_STOP%" >nul 2>&1
if exist "%SESSION_STATE%" del "%SESSION_STATE%" >nul 2>&1
set "sessionlife="
set "computernameofsession="
echo Session stopped.
echo [%DATE% %TIME%] Session stopped. >> "%DEBUG_LOG%"
goto :main loop
:: ---------- Main loop ----------
:mainloop
echo.
echo Operating Modes:
echo                 [D] Define Session parameters
echo                 [S] Start persistent session
echo                 [K] Kill persistent session
echo                 [1] Inline PowerShell command
echo                 [2] Send and run local [.ps1] file
echo                 [X] Quit
set /p "MODE=Choose an option [D/S/K/1/2/X]: "
echo [%DATE% %TIME%] User selected mode: %MODE% >> "%DEBUG_LOG%"
if /I "%MODE%"=="X" goto :cleanup_exit
if /I "%MODE%"=="S" (
    call :StartSession
    if not defined sessionlife (
        echo No session started. Returning to menu.
        echo [%DATE% %TIME%] No session started after attempt. >> "%DEBUG_LOG%"
    )
    goto :mainloop
)
if /I "%MODE%"=="K" (call :StopSession & goto :mainloop)
if "%MODE%"=="1" goto :inline
if "%MODE%"=="2" goto :filemode
if "%mode%"=="D" goto :definesession
echo Invalid input.
echo [%DATE% %TIME%] Invalid input: %MODE% >> "%DEBUG_LOG%"
goto :mainloop
:: ---------- Inline command ----------
:inline
set /p "INLINE_CMD=Enter PowerShell command to run on %TARGET%: "
if "%INLINE_CMD%"=="" (
    echo Command cannot be empty.
    echo [%DATE% %TIME%] Inline command empty. >> "%DEBUG_LOG%"
    goto :mainloop
)
echo [%DATE% %TIME%] Inline command: %INLINE_CMD% >> "%DEBUG_LOG%"
if exist "%SESSION_STATE%" (
    (echo %INLINE_CMD%) > "%SESSION_IN%"
    set /a _wait=0
    :waitout
    if exist "%SESSION_OUT%" (
        type "%SESSION_OUT%"
        del "%SESSION_OUT%" >nul 2>&1
        echo [%DATE% %TIME%] Inline command response received. >> "%DEBUG_LOG%"
        goto :mainloop
    )
    if %_wait% GEQ 150 (
        echo Timed out waiting for session response.
        echo [%DATE% %TIME%] Timeout waiting for inline command response. >> "%DEBUG_LOG%"
        goto :mainloop
    )
    set /a _wait+=1
    timeout /t 0 >nul 2>&1
    goto :waitout
) else (
    set "TEMP_PS1=%WORKDIR%\remote_inline_%RANDOM%.ps1"
    (
        echo $ErrorActionPreference='Stop'
        echo try {
        echo     $cred=Import-Clixml -Path '%CRED_FILE%'
        echo     Invoke-Command -ComputerName '%TARGET%' -Credential $cred -ScriptBlock { %INLINE_CMD% } -ErrorAction Stop
        echo } catch { Write-Host 'ERROR:' $_.Exception.Message }
    ) > "%TEMP_PS1%"
    powershell -NoLogo -ExecutionPolicy Bypass -File "%TEMP_PS1%"
    if errorlevel 1 (
        echo [%DATE% %TIME%] ERROR: Inline command execution failed. >> "%DEBUG_LOG%"
    ) else (
        echo [%DATE% %TIME%] Inline command executed without session. >> "%DEBUG_LOG%"
    )
    del "%TEMP_PS1%" >nul 2>&1
    goto :mainloop
)
:: ---------- File mode ----------
:filemode
set /p LOCAL_PSSCRIPT=Enter full path to local .ps1 file:
if not exist "%LOCAL_PSSCRIPT%" (
    echo File not found.
    echo [%DATE% %TIME%] File not found: %LOCAL_PSSCRIPT% >> "%DEBUG_LOG%"
    goto :mainloop
)
echo [%DATE% %TIME%] File mode: %LOCAL_PSSCRIPT% >> "%DEBUG_LOG%"
if exist "%SESSION_STATE%" (
    powershell -NoProfile -ExecutionPolicy Bypass -Command ^
        "$text=Get-Content -Raw -LiteralPath '%LOCAL_PSSCRIPT%'; $enc=[Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($text)); $cmd='powershell -EncodedCommand '+$enc; Set-Content -Path '%SESSION_IN%' -Value $cmd -Encoding utf8"
    if errorlevel 1 (
        echo Failed to prepare file for session.
        echo [%DATE% %TIME%] ERROR: Failed to prepare file for session. >> "%DEBUG_LOG%"
        goto :mainloop
    )
    set /a _wait=0
    :waitout2
    if exist "%SESSION_OUT%" (
        type "%SESSION_OUT%"
        del "%SESSION_OUT%" >nul 2>&1
        echo [%DATE% %TIME%] File mode response received. >> "%DEBUG_LOG%"
        goto :mainloop
    )
    if %_wait% GEQ 150 (
        echo Timed out waiting for session response.
        echo [%DATE% %TIME%] Timeout waiting for file mode response. >> "%DEBUG_LOG%"
        goto :mainloop
    )
    set /a _wait+=1
    timeout /t 0 >nul 2>&1
    goto :waitout2
) else (
    set "TEMP_PS1=%WORKDIR%\remote_file_%RANDOM%.ps1"
    (
        echo $ErrorActionPreference='Stop'
        echo try {
        echo     $cred=Import-Clixml -Path '%CRED_FILE%'
        echo     Invoke-Command -ComputerName '%TARGET%' -Credential $cred -FilePath '%LOCAL_PSSCRIPT%' -ErrorAction Stop
        echo } catch { Write-Host 'ERROR:' $_.Exception.Message }
    ) > "%TEMP_PS1%"
    powershell -NoLogo -ExecutionPolicy Bypass -File "%TEMP_PS1%"
    if errorlevel 1 (
        echo [%DATE% %TIME%] ERROR: File mode execution failed. >> "%DEBUG_LOG%"
    ) else (
        echo [%DATE% %TIME%] File mode executed without session. >> "%DEBUG_LOG%"
    )
    del "%TEMP_PS1%" >nul 2>&1
    goto :mainloop
)
:: ---------- Cleanup ----------
:cleanup_exit
echo Cleaning up working directory...
echo [%DATE% %TIME%] Starting cleanup. >> "%DEBUG_LOG%"
if exist "%CRED_FILE%" del "%CRED_FILE%" >nul 2>&1
if exist "%SESSION_STATE%" call :StopSession
for %%F in ("%WORKDIR%\*.ps1") do del "%%F" >nul 2>&1
for %%F in ("%WORKDIR%\*.txt") do del "%%F" >nul 2>&1
for %%F in ("%WORKDIR%\*.log") do del "%%F" >nul 2>&1
rd "%WORKDIR%" >nul 2>&1
echo Done. Exiting.
endlocal
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM POWERSHELL EXPERIMENTAL FUNCTION [][][]
:enff
edit %~dp0personalnotes.txt
IF %errorlevel%==1 (
   echo Warning! The program failed to edit: %~dp0personalnotes.txt.
) ELSE (
echo Success! The program succeeded to edit: %~dp0personalnotes.txt.
)
IF %loggingoutput%==on edit %~dp0personalnotes.txt >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cnff
IF EXIST %~dp0personalnotes.txt echo A personal notes file already exists in the folder of this program.
IF EXIST %~dp0personalnotes.txt goto catspallin
echo. > %~dp0personalnotes.txt
IF %errorlevel%==1 (
   echo Warning! The program failed to create: %~dp0personalnotes.txt.
) ELSE (
echo Success! The program succeeded to create: %~dp0personalnotes.txt.
)
edit %~dp0personalnotes.txt
IF %errorlevel%==1 (
   echo Warning! The program failed to edit: %~dp0personalnotes.txt.
) ELSE (
echo Success! The program succeeded to edit: %~dp0personalnotes.txt.
)
IF %loggingoutput%==on edit %~dp0personalnotes.txt >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dnff
IF exist %~dp0personalnotes.txt echo The personal note file has been located. & goto delpersnoteexist
echo Warning! The personal note file was not found in the folder of this program, therefore it has not been deleted.
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:delpersnoteexist
del /f %~dp0personalnotes.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete: %~dp0personalnotes.txt on the host.
) ELSE (
    echo Success! Operation completed to delete: %~dp0personalnotes.txt on the host. program is stable.
)
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:apss
powercfg /l
IF %errorlevel%==1 (
    echo Warning! Operation failed to call powerschemes on the host.
) ELSE (
    echo Success! Operation completed to call powerschemes.
)
SET /P guidofptdacds=Enter the GUID of the powerscheme to activate e.g. [12345678-90ab-cdef-1234-567890abcdef]:
powercfg /setactive %guidofptdacds%
IF %errorlevel%==1 (
   echo Warning! the powerscheme not has been activated.
) ELSE (
echo Success! the powerscheme has been activated.
)
IF %loggingoutput%==on powercfg /setactive %guidofptdacds% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dpss
powercfg /l
IF %errorlevel%==1 (
    echo Warning! Operation failed to call powerschemes on the host.
) ELSE (
    echo Success! Operation completed to call powerschemes.
)
echo Deleting a powerscheme only works if it is not active, to de-activate one, just simply activate another.
SET /P guidofptd=Enter the GUID of the powerscheme to delete e.g. [12345678-90ab-cdef-1234-567890abcdef]:
powercfg /delete %guidofptd%
IF %errorlevel%==1 (
   echo Warning! the powerscheme not has been deleted.
) ELSE (
echo Success! the powerscheme has been deleted. program is stable!
)
IF %loggingoutput%==on powercfg /delete %guidofptd% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpss
powercfg /l
IF %errorlevel%==1 (
    echo Warning! Operation failed to get any power information.
) ELSE (
    echo Success! Operation completed getting power information.
)
echo the GUID of the powerscheme must be written in hexadecimal format.
SET /P guidofptdd=Enter the GUID of the powerscheme you want to create e.g. [12345678-90ab-cdef-1234-567890abcdef]:
SET /P nameofcreatedpowerscheme=Enter the name of the powerscheme you want to create e.g. [flappypowerscheme]: 
powercfg /create %guidofptdd% %nameofcreatedpowerscheme%
IF %errorlevel%==1 (
    echo Warning! Operation failed to create the powerscheme: %nameofcreatedpowerscheme% with GUID: %guidofptdd%.
) ELSE (
    echo Success! Operation completed to create the powerscheme: %nameofcreatedpowerscheme% with GUID: %guidofptdd%. program is stable.
)
IF %loggingoutput%==on powercfg /create %guidofptdd% %nameofcreatedpowerscheme% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:spss
powercfg /l
IF %errorlevel%==1 (
    echo Warning! Operation failed to get any power information.
) ELSE (
    echo Success! Operation completed getting power information. program is stable.
)
IF %loggingoutput%==on powercfg /l >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ssss
net stats workstation
IF %errorlevel%==1 (
    echo Warning! Operation failed to get information about the current workstation.
) ELSE (
    echo Success! Operation completed to get the information about the current workstation. program is stable.
)
IF %loggingoutput%==on net stats workstation >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:tracertt
SET /P iptotracert=Enter the IP adress or domain name to trace the route to e.g. [127.0.0.1] or [www.google.com]:
tracert "%iptotracert%"
IF %errorlevel%==1 (
    echo Warning! Operation failed to trace the route to the target: %iptotracert%. 
) ELSE (
    echo Success! Operation completed to trace the route to the target: %iptotracert%. program is stable.
)
IF %loggingoutput%==on tracert "%iptotracert%" >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:pingert
SET /P iptoping=Enter the IP adress to ping e.g. [127.0.0.1]:
ping "%iptoping%"
IF %errorlevel%==1 (
    echo Warning! Operation failed to ping the target: %iptoping%. 
) ELSE (
    echo Success! Operation completed to ping the target: %iptoping%. program is stable.
)
IF %loggingoutput%==on ping "%iptoping%" >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:scfderd
SET /P wilmenius=Enter the root drive or directory path to list the content of e.g. [C:\]:
dir "%wilmenius%"
IF %errorlevel%==1 (
    echo Warning! Operation failed to list the content of: %wilmenius%.
) ELSE (
    echo Success! Operation completed to list the content of: %wilmenius%. program is stable.
)
IF %loggingoutput%==on dir "%wilmenius%" >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:scff
dir "%~dp0"
IF %errorlevel%==1 (
    echo Warning! Operation failed to call directory: %~dp0.
) ELSE (
    echo Success! Operation completed to call directory: %~dp0. program is stable.
)
IF %loggingoutput%==on dir "%~dp0" >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dlgg
net localgroup
IF %errorlevel%==1 (
    echo Warning! Operation failed to call localgroups.
) ELSE (
    echo Success! Operation completed calling localgroups.
)
SET /P deletloclg=Enter the name of the local group to delete:
net localgroup %deletloclg% /delete
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete localgroup: %deletloclg%.
) ELSE (
    echo Success! Operation completed deleting localgroup: %deletloclg%. program is stable.
)
IF %loggingoutput%==on net localgroup %deletloclg% /delete >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:eff
SET /p filetoedituda=Enter the path of the file to edit e.g. [C:\flappybird.txt]:
edit %filetoedituda%
IF %errorlevel%==1 (
    echo Warning! Operation failed to edit the file: %filetoedituda%.
) ELSE (
    echo Success! Operation completed editing the file: %filetoedituda% successfully. program is stable.
)
IF %loggingoutput%==on type %filetoedituda% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM :inboundfrommainmenu
secedit /export /cfg "%~dp0localpolicy.cfg"
IF %errorlevel%==1 (
    echo Warning! Operation failed to export local policy.
) ELSE (
    echo Success! Operation completed to export local policy.
)
edit %~dp0localpolicy.cfg
IF %errorlevel%==1 (
    echo Warning! Operation failed to edit the exported group policy.
) ELSE (
    echo Success! Operation completed editing the exported group policy successfully.
)
secedit /configure /db secedit.sdb /cfg "%~dp0localpolicy.cfg" /areas SECURITYPOLICY
IF %errorlevel%==1 (
    echo Warning! Operation failed to initiate the new policy.
) ELSE (
    echo Success! Operation completed initiating the new group policy successfully. program is stable.
)
IF %loggingoutput%==on secedit /export /cfg "%~dp0localpolicy.cfg" >>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on secedit /configure /db secedit.sdb /cfg "%~dp0localpolicy.cfg" /areas SECURITYPOLICY >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:rsops
gpresult /r
IF %errorlevel%==1 (
    echo Warning! Operation failed to call group policys.
) ELSE (
    echo Success! Operation completed to call information group policys. program is stable.
)
IF %loggingoutput%==on gpresult /r >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:udgpp
gpupdate /force
IF %errorlevel%==1 (
    echo Warning! Operation failed to force update the group policys
) ELSE (
    echo Success! Operation completed to force update group policys. program is stable.
)
IF %loggingoutput%==on gpupdate /force >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dufgg
net localgroup
IF %errorlevel%==1 (
    echo Warning! Operation failed to call localgroups.
) ELSE (
    echo Success! Operation completed calling localgroups successfully.
)
net user
IF %errorlevel%==1 (
    echo Warning! Operation failed to call users.
) ELSE (
    echo Success! Operation completed calling users successfully.
)
SET /P abilionix=Enter the username of the user to remove from the group:
SET /P ebilionixium=Enter the local group to delete the user from:
net localgroup %ebilionixium% %abilionix% /delete
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete the user:% abilionix% from localgroup: %ebilionixium%.
) ELSE (
    echo Success! Operation completed deleting the user:% abilionix% from localgroup: %ebilionixium% successfully.
)
net localgroup %ebilionixium%
IF %errorlevel%==1 (
    echo Warning! Operation failed to show content of localgroup: %ebilionixium%.
) ELSE (
    echo Success! Operation completed calling content of: %ebilionixium%. program is stable.
)
IF %loggingoutput%==on net localgroup %ebilionixium% %abilionix% /delete >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:clgg
net localgroup
IF %errorlevel%==1 (
    echo Warning! Operation failed to call localgroups.
) ELSE (
    echo Success! Operation completed calling localgroups successfully.
)
SET /P lclfgrpt=Enter the name of the local group you want to create:
net localgroup %lclfgrpt% /add
IF %errorlevel%==1 (
    echo Warning! Operation failed to create the localgroup: %lclfgrpt%
) ELSE (
    echo Success! Operation completed creating the localgroup: %lclfgrpt% successfully. program is stable.
)
IF %loggingoutput%==on net localgroup %lclfgrpt% /add >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:astgg
net localgroup
IF %errorlevel%==1 (
    echo Warning! Operation failed to call localgroups.
) ELSE (
    echo Success! Operation completed calling localgroups successfully.
)
net user
IF %errorlevel%==1 (
    echo Warning! Operation failed to call users.
) ELSE (
    echo Success! Operation completed calling users successfully.
)
SET /P localgroupmodnm=Enter the username of the user to assing to the local group:
SET /P localgroupidnt=Enter the name of the local group to assign  the user to:
net localgroup %localgroupidnt% %localgroupmodnm% /add
IF %errorlevel%==1 (
    echo Warning! Operation failed to assign the user: %localgroupmodnm% to the localgroup: %localgroupidnt%
) ELSE (
    echo Success! Operation completed assigning the user: %localgroupmodnm% to the localgroup: %localgroupidnt% successfully. program is stable.
)
IF %loggingoutput%==on net localgroup %localgroupidnt% %localgroupmodnm% /add >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:duu
net user
IF %errorlevel%==1 (
    echo Warning! Operation failed to call usernames in your system.
) ELSE (
    echo Success! Operation partially completed successfully.
)
SET /P userdeletnm=Enter the username of the user to delete:
net user %userdeletnm% /delete
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete user: %userdeletnm%
) ELSE (
    echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net user %userdeletnm% /delete >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:slgg
net localgroup
IF %errorlevel%==1 (
    echo Warning! Operation failed to call localgroups
) ELSE (
    echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net localgroup >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:caa
net user
IF %errorlevel%==1 (
    echo Warning! Operation failed to recieve any user information.
) ELSE (
    echo Success! Operation partially completed successfully.
)
SET /P usernomesd=Enter the username of the user you want to promote to admin:
net localgroup Administrators %usernomesd% /add
IF %errorlevel%==1 (
    echo Warning! Operation failed to add user to the list of administrators.
) ELSE (
    echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net localgroup Administrators %usernomesd% /add >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cuu
net user
IF %errorlevel%==1 (
    echo Warning! Operation failed to recieve any user information.
) ELSE (
    echo Success! Operation partially completed successfully.
)
SET /P malinobv=Enter the username for the new user:
SET /p passmobilo=Enter the password for the new user:
net user %malinobv% %passmobilo% /add
IF %errorlevel%==1 (
    echo Warning! Operation failed to create a new user: %malinobv% with passwd: %passmobilo%
) ELSE (
    echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net user %malinobv% %passmobilo% /add >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM main logging section
:lpa
set logging=on
echo. >%~dp0manowarlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write file: %~dp0manowarlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo. >%~dp0loggingmodeon.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write file: %~dp0loggingmodeon.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo [Man o' War] >>%~dp0manowarlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write file: %~dp0manowarlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo [program operation log] >>%~dp0manowarlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write file: %~dp0manowarlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo. >>%~dp0manowarlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write file: %~dp0manowarlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
IF %errorlevel%==1 (
    echo Warning! Operation failed to write file: %~dp0manowarlog.txt
) ELSE (
    echo Success! Operation fully completed successfully. program is stable.
)
echo [logging mode enabled]
echo the log file is saved in: %~dp0manowarlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:lpaa
echo [logging mode disabled]
echo the log file is no longer saved in: %~dp0manowarlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
set logging=off
del /f %~dp0loggingmodeon.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete file: %~dp0loggingmodeon.txt
) ELSE (
    echo Success! Operation fully completed successfully. program is stable.
)
goto catspallin
:waos
set loggingoutput=on
echo. >%~dp0manowaroutputlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write to file: %~dp0manowaroutputlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo. >%~dp0loggingoutputmodeon.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write to file: %~dp0loggingoutputmodeon.txt
) ELSE (
    echo Success! Operation completed successfully.
)
echo [Man o' War] >>%~dp0manowaroutputlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write to file: %~dp0manowaroutputlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo [output operation log] >>%~dp0manowaroutputlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write to file: %~dp0manowaroutputlog.txt
) ELSE (
    echo Success! Operation partially completed successfully.
)
echo. >>%~dp0manowaroutputlog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to write to file: %%~dp0manowaroutputlog.txt
) ELSE (
    echo Success! Operation fully completed successfully. program is stable.
)
echo [output to file logging mode enabled]
echo the program output log file is saved in: %~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dwaos
echo [output to file logging mode disabled]
echo the log file is no longer saved in: %~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
set loggingoutput=off
del /f %~dp0loggingoutputmodeon.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete: %~dp0loggingoutputmodeon.txt
) ELSE (
    echo Success! Operation completed successfully.
)
goto catspallin
REM main logging section
REM Extension presence finder
:watt
SET /P operationabxium=Enter the root drive you want to inspect e.g. [C:\]:
IF %operationabxium%==C:\ set rootdriveshrtct=$env:SYSTEMDRIVE\
IF %operationabxium%==C:\ goto cpregivenindef
set rootdriveshrtct=%operationabxium%
:cpregivenindef
REM Set paths
set "psfile=%~dp0ScanExtensions.ps1"
set "outputfile=%~dp0ExtensionDatabase.txt"
set "logfile=%~dp0DebugLog.txt"
set "errorlog=%~dp0PSErrorLog.txt"  # Separate log for PS errors
REM Clear previous logs
if exist "%logfile%" del "%logfile%"
if exist "%errorlog%" del "%errorlog%"
echo [DEBUG] Starting script. Paths: PSFile=%psfile%, OutputFile=%outputfile%, LogFile=%logfile%, ErrorLog=%errorlog% >> "%logfile%"
echo [DEBUG] Checking if PowerShell is available... >> "%logfile%"
REM Check if PowerShell is available
powershell -Command "Write-Host 'PowerShell OK'" >nul 2>&1
if errorlevel 1 (
    echo [ERROR] PowerShell is not available or not in PATH. >> "%logfile%"
    echo Error: PowerShell not found. Check your PATH or install PowerShell.
    pause
    exit /b 1
)
echo [DEBUG] PowerShell is available. >> "%logfile%"
echo [DEBUG] Creating PowerShell script line-by-line... >> "%logfile%"
REM Create PowerShell script line-by-line to avoid pipe issues
echo $OutputFile = "%outputfile%" > "%psfile%"
echo $ErrorLog = "%errorlog%" >> "%psfile%"  # Use separate error log
echo if (Test-Path $OutputFile) { Remove-Item $OutputFile } >> "%psfile%"
echo New-Item -Path $OutputFile -ItemType File -Force >> "%psfile%"  # Ensure file is created
echo $ExtCounts = @{} >> "%psfile%"
echo $FoldersToScan = @("%rootdriveshrtct%")  # Scans the system drive root >> "%psfile%"
echo Write-Host "Starting scan on folders: $FoldersToScan" >> "%psfile%"
echo foreach ($Folder in $FoldersToScan) { >> "%psfile%"
echo     Write-Host "Scanning $Folder ..." >> "%psfile%"
echo     try { >> "%psfile%"
echo         $files = Get-ChildItem $Folder -Recurse -File -ErrorAction SilentlyContinue >> "%psfile%"  # Changed to SilentlyContinue to skip denied access
echo         foreach ($file in $files) { >> "%psfile%"
echo             $ext = $file.Extension.ToLower() >> "%psfile%"
echo             if ($ext -ne "") { >> "%psfile%"
echo                 if ($ExtCounts.ContainsKey($ext)) { >> "%psfile%"
echo                     $ExtCounts[$ext] += 1 >> "%psfile%"
echo                 } else { >> "%psfile%"
echo                     $ExtCounts[$ext] = 1 >> "%psfile%"
echo                 } >> "%psfile%"
echo             } >> "%psfile%"
echo         } >> "%psfile%"
echo     } catch { >> "%psfile%"
echo         Out-File -FilePath $ErrorLog -InputObject "Error scanning $Folder : $_" -Append >> "%psfile%"  # Log to separate file
echo     } >> "%psfile%"
echo } >> "%psfile%"
echo Write-Host "Scan complete. Total extensions found: $($ExtCounts.Count)" >> "%psfile%"
echo $sorted = $ExtCounts.GetEnumerator() ^| Sort-Object Name >> "%psfile%"
echo foreach ($item in $sorted) { >> "%psfile%"
echo     Out-File -FilePath $OutputFile -InputObject "$($item.Name) - $($item.Value)" -Append >> "%psfile%"
echo } >> "%psfile%"
echo Write-Host "Results saved to $OutputFile" >> "%psfile%"
if not exist "%psfile%" (
    echo [ERROR] Failed to create PowerShell script at %psfile%. >> "%logfile%"
    echo Error: Could not create PS1 file.
    pause
    exit /b 1
)
echo [DEBUG] PowerShell script created successfully. >> "%logfile%"
echo [DEBUG] Running PowerShell script... >> "%logfile%"
REM Run the PowerShell script
powershell -NoProfile -ExecutionPolicy Bypass -File "%psfile%"
if errorlevel 1 (
    echo [ERROR] PowerShell script failed with exit code %errorlevel%. Check %logfile% and %errorlog% for details. >> "%logfile%"
    echo Error: PowerShell execution failed. See %logfile% and %errorlog%.
    pause
    exit /b 1
)
echo [DEBUG] PowerShell script ran successfully. >> "%logfile%"
REM Delete the PowerShell script after use
if exist "%psfile%" (
    del "%psfile%"
    echo [DEBUG] Deleted temporary PS1 file. >> "%psfile%"
) else (
    echo [WARNING] PS1 file not found for deletion. >> "%logfile%"
)
REM Wait for user to continue
echo.
echo Press any key to view the ExtensionDatabase.txt file...
pause >nul
REM Display content of ExtensionDatabase.txt using more
if exist "%outputfile%" (
    echo [DEBUG] Displaying output file... >> "%logfile%"
    type "%outputfile%"
    if %errorlevel%==1 type "%outputfile%" | more
) else (
    echo [ERROR] Output file not found at %outputfile%. Check %logfile% and %errorlog% for scan errors. >> "%logfile%"
    echo Error: Output file not found. Check %logfile% and %errorlog% for details.
)
echo [DEBUG] Script completed. >> "%logfile%"
echo.
del /f %~dp0ScanExtensions.ps1
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete: %~dp0ScanExtensions.ps1
) ELSE (
    echo Success! Operation partially completed successfully.
)
del /f %~dp0DebugLog.txt
IF %errorlevel%==1 (
    echo Warning! Operation failed to delete: %~dp0DebugLog.txt
) ELSE (
    echo Success! Operation completed successfully. program is stable.
)
goto catspallin
:dfrra
SET /P rulefwtodelet=Enter the name of the firewall rule to delete e.g. [flappybird]:
netsh advfirewall firewall delete rule name="%rulefwtodelet%"
IF %errorlevel%==1 (
    echo Warning! Operation failed.
) ELSE (
    echo Success! Operation completed successfully. & goto noerlelvlfwrdel
)
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:noerlelvlfwrdel
IF %loggingoutput%==on netsh advfirewall firewall add rule name="%adrulerulenamefw%" dir=%direcrtion% action=%policyfwrc% protocol=%rulefwpotocolim% localport=%porttouseinfewrlus% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:crffa
SET /P adrulenamefw=Enter the name of the new firewall rule e.g. [flappybird]:
SET /P direcrtion=Select the direction of the traffic e.g.[in] or [out]:
SET /P policyfwrc=Enter the policy for the rule [allow], [block] or [bypass]:
SET /p rulefwpotocolim=Enter the network protocol to use e.g. [UDP], [TCP] or [ANY]:
SET /p porttouseinfewrlus=Enter the network port to use e.g. [8080]:
netsh advfirewall firewall add rule name="%adrulerulenamefw%" dir=%direcrtion% action=%policyfwrc% protocol=%rulefwpotocolim% localport=%porttouseinfewrlus%
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully. & goto succesnoerlvfwrc
)
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
echo [ERRORLEVEL: %errorlevel%] The operation has failed.
goto catspallin
:succesnoerlvfwrc
IF %loggingoutput%==on netsh advfirewall firewall add rule name="%adrulerulenamefw%" dir=%direcrtion% action=%policyfwrc% protocol=%rulefwpotocolim% localport=%porttouseinfewrlus% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:gfpllp
netsh advfirewall show currentprofile
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on netsh advfirewall show currentprofile >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:gfpl
netsh advfirewall show allprofiles
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on netsh advfirewall show allprofiles >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ifrr
netsh advfirewall firewall show rule name=all dir=in
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on netsh advfirewall firewall show rule name=all dir=in >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ofrr
netsh advfirewall firewall show rule name=all dir=out
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on netsh advfirewall firewall show rule name=all dir=out >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:gff
netsh advfirewall firewall show rule name=all
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dupl
start "" "%~dp0ManOWar%vrsion%.bat"
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:gccc
SET /P morefilepathium=Enter file to examine e.g. [C:\ProgramFiles\MyApp\app.exe]:
more "%morefilepathium%"
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on more "%morefilepathium%" >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:stsls
SET /P entropprogstart=Enter the program to start, e.g. [C:\ProgramFiles\MyApp\app.exe]:
start %entropprogstart%
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on start %entropprogstart% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ktl
TASKLIST
IF %errorlevel%==1 (
   echo Warning! could not fetch running tasks.
) ELSE (
echo Success! tasklist fetched.
)
SET /P ttkltl=Enter the name of the task that needs to be killed e.g. [explorer.exe]:
TASKKILL /F /IM %ttkltl%
IF %errorlevel%==1 (
   echo Warning! The running task could not be elliminated.
) ELSE (
echo Success! Operation completed successfully. program is stable.
)
IF %loggingoutput%==on TASKKILL /F /IM %ttkltl% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:stls
TASKLIST
IF %errorlevel%==1 (
   echo Warning! Operation failed. program may be instable.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on TASKLIST >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:irss
sc query type= service state= all
IF %errorlevel%==1 (
   echo Warning! Operation failed to find services.
) ELSE (
echo Success! Operation completed to find services successfully.
)
IF %loggingoutput%==on sc query type= service state= all >>%~dp0manowaroutputlog.txt
SET /P ssststop=Enter the name of the service you would like to start:
net start %ssststop%
IF %errorlevel%==1 (
   echo Warning! Operation failed to start service.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net start %ssststop% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:srss
sc query type= service state= all
IF %errorlevel%==1 (
   echo Warning! Operation failed to find services.
) ELSE (
echo Success! Operation completed finding services successfully.
)
IF %errorlevel%==1 echo Warning! Could not fetch services.
IF %loggingoutput%==on sc query type= service state= all >>%~dp0manowaroutputlog.txt
SET /P ststop=Enter the name of the service you would like to stop:
net stop %ststop%
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net stop %ststop% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:lssl
sc query type= service state= all
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on sc query type= service state= all >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:lssp
net start
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on net start >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:trackm
set hidmenud=off
:internmd
netstat -ano
IF %errorlevel%==0 echo Warning! Failed to fetch network info.
:loopofmanyl
IF %hidmenud%==off echo ----------------------------------------
IF %hidmenud%==off echo Enter "X" to return to main menu.
IF %hidmenud%==off echo Enter "cls" to clear the terminal.
IF %hidmenud%==off echo Enter "A" to hide this menu.
IF %hidmenud%==off echo Enter "sct" to show system connections.
IF %hidmenud%==off echo ----------------------------------------
IF %hidmenud%==on echo Enter "B" to show the menu.
SET /P tprogramid=Enter the PID of the connection e.g. [3301]:
IF %tprogramid%==X goto catspallin
IF %tprogramid%==x goto catspallin
IF %tprogramid%==A set hidmenud=on & goto loopofmanyl
IF %tprogramid%==a set hidmenud=on & goto loopofmanyl
IF %tprogramid%==b set hidmenud=off & goto loopofmanyl
IF %tprogramid%==B set hidmenud=off & goto loopofmanyl
IF %tprogramid%==sct goto internmd
tasklist /FI "PID eq %tprogramid%"
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on netstat -ano >>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on tasklist /FI "PID eq %tprogramid%" >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto loopofmanyl
:awls
echo WARNING! you are about to change the current windows product key.
echo if you do not wish to continue, input "X" or "x" to return.
SET /P predkey_ac=Enter the windows product key e.g. [XXXXX-XXXXX-XXXXX-XXXXX-XXXXX]:
IF %predkey_ac%==X goto catspallin
IF %predkey_ac%==x goto catspallin
slmgr /ipk %predkey_ac%
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on slmgr /ipk %predkey_ac% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:lfel
SET /P path_finderins=Enter the root drive to preform the search in, e.g. [C:\]:
SET /P extension_filefind=Enter the file extension to look for e.g. [.txt]:
dir %path_finderins%*%extension_filefind% /s /b
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on dir %path_finderins%*%extension_filefind% /s /b >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:lascl
ftype
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on ftype >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:glimp
wmic path softwareLicensingService get OA3xOriginalProductKey
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on wmic path softwareLicensingService get OA3xOriginalProductKey >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:asck
SET /P fileassocext=Enter the extension of the file association you want to inspect e.g. [.txt]:
assoc %fileassocext%
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on assoc %fileassocext% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:rii
:catspallinitium
set widmde=off
echo -------------------------------------------
echo primary root hives of the windows registry
echo HKEY_CLASSES_ROOT        (HKCR)
echo HKEY_CURRENT_USER        (HKCU)
echo HKEY_LOCAL_MACHINE       (HKLM)
echo HKEY_USERS               (HKU)
echo HKEY_CURRENT_CONFIG      (HKCC)
echo.
echo ENTER X to return to menu.
echo ENTER B to hide this navigation menu.
echo ENTER cls to clear the terminal.
echo -------------------------------------------
echo.
:nowindowreg
IF %widmde%==on echo ENTER A to show the registry navigation menu.
SET /P operatixiumreg=Enter the name of the registry key e.g. [HKLM]:
IF %operatixiumreg%==X goto catspallin
IF %operatixiumreg%==B set widmde=on
IF %operatixiumreg%==B goto nowindowreg
IF %operatixiumreg%==A set widmde=off
IF %operatixiumreg%==cls goto clsmd
reg query %operatixiumreg%
IF %errorlevel%==1 (
   echo Warning! Failed to find any registry values for: [%operatixiumreg%]
) ELSE (
echo Success! Operation executed succesfully.
)
IF %loggingoutput%==on reg query %operatixiumreg% >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
IF %widmde%==on goto nowindowreg
goto catspallinitium
:clsmd
cls
IF %widmde%==on goto nowindowreg
IF %widmde%==off goto catspallinitium
echo error occured.
pause
exit
:wlans
netsh wlan show all
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! Operation completed successfully.
)
IF %loggingoutput%==on netsh wlan show all >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:rwpp
netsh wlan show profile
IF %errorlevel%==1 echo Warning! operation failed partially and is no longer a success.
IF %loggingoutput%==on netsh wlan show profile >>%~dp0manowaroutputlog.txt
SET /P ssid=enter the exact name of the ssid or wifi network name:
netsh wlan show profile %ssid% key=clear
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! The operation was successful.
)
IF %loggingoutput%==on netsh wlan show profile %ssid% key=clear >>%~dp0manowaroutputlog.txt
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ipcc
ipconfig /all
IF %errorlevel%==1 (
   echo Warning! The operation has failed.
) ELSE (
echo Success! The operation was executed successfully.
)
IF %loggingoutput%==on ipconfig /all >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:bcdd
IF %loggingoutput%==on bcdedit >>%~dp0manowaroutputlog.txt
bcdedit
IF %errorlevel%==1 (
   echo Warning! Operation failed.
) ELSE (
echo Success! The operation was successful.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:wrs
REM weather report, a lightweight terminal weather report. by levi santegoets. created and finished on: 18-05-2024 18:05
:startax
echo                          __  __                                            __
echo  __        _____  ____ _/ /_/ /_  ___  _____   ________  ____  ____  _____/ /_  
echo  \ \  /\  / / _ \/ __ `/ __/ __ \/ _ \/ ___/  / ___/ _ \/ __ \/ __ \/ ___/ __/  
echo   \ \/  \/ /  __/ /_/ / /_/ / / /  __/ /     / /  /  __/ /_/ / /_/ / /  / /_  
echo    \__/\__/\___/\__,_/\__/_/ /_/\___/_/     /_/   \___/ .___/\____/_/   \__/  V0.01
echo                                                      /_/                    
echo A lightwight terminal weather report,
echo [X] for menu
echo.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
SET /P LOCATIONOFWE=Location by name:
IF %LOCATIONOFWE%==X goto catspallin
IF %LOCATIONOFWE%==x goto catspallin
@echo on
curl wttr.in/%LOCATIONOFWE%
@echo off
pause
goto startax
:mkdrium
SET /p DMRIK=Directory to make:
mkdir %DMRIK%
IF %errorlevel%==1 (
   echo Warning! The directory has not been made.
) ELSE (
echo Success! The directory has been made.
)
IF %loggingoutput%==on mkdir %DMRIK% >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:findm
SET /P execurea=Root drive to look in e.g. [C:\]
SET /P execure=File to look for e.g. [notepad.exe]:
dir %execurea% /s /b %execure%
IF %errorlevel%==1 (
   echo Warning! Errorlevel = %errorlevel%, This means the operation has failed.
) ELSE (
echo Success! The file search was successfully executed.
)
IF %loggingoutput%==on dir %execurea% /s /b %execure% >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cmdd
SET /p coms=Command to Execute^>
%coms%
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on %coms% >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpippp
where *
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on where * >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:iusee
SET /p usernome=Enter the username:
net user %usernome%
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on net user %~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:gusee
net user
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on net user %~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:gcpuu
wmic cpu get name,CurrentClockSpeed,MaxClockSpeed,NumberOfCores,NumberOfLogicalProcessors
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on wmic cpu get name,CurrentClockSpeed,MaxClockSpeed,NumberOfCores,NumberOfLogicalProcessors >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:rdpdd
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
IF %errorlevel%==1 echo Warning! Command execution inside script failed and part of operation has become unstable and incompatible!
netsh advfirewall firewall set rule group="remote desktop" new enable=No
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f >>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on netsh advfirewall firewall set rule group="remote desktop" new enable=No >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:rdpee
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
IF %errorlevel%==1 echo Warning! Command execution inside script failed and part of operation has become unstable and incompatible!
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%. Contact your system administrator.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
>>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on netsh advfirewall firewall set rule group="remote desktop" new enable=Yes >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpppp
set /p portnumberab=Enter the port to open:
set /p protocolab=Enter the protocol (TCP/UDP) [default TCP]:
IF %loggingoutput%==on netsh advfirewall firewall delete rule name="Open Port %portnumberab%" protocol=%protocolab% localport=%portnumberab% >>%~dp0manowaroutputlog.txt
netsh advfirewall firewall delete rule name="Open Port %portnumberab%" protocol=%protocolab% localport=%portnumberab%
if %errorlevel%==0 (
    echo.
    echo Port %portnumber% closed successfully for protocol %protocol%.
) else (
    echo.
    echo Failed to close port %portnumber% for protocol %protocol%.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:opppp
set /p portnumber=Enter the port to open:
set /p protocol=Enter the protocol (TCP/UDP) [default TCP]:
IF %loggingoutput%==on netsh advfirewall firewall add rule name="Open Port %portnumber%" dir=in action=allow protocol=%protocol% localport=%portnumber% >>%~dp0manowaroutputlog.txt
netsh advfirewall firewall add rule name="Open Port %portnumber%" dir=in action=allow protocol=%protocol% localport=%portnumber%
if %errorlevel%==0 (
    echo.
    echo Port %portnumber% opened successfully for protocol %protocol%.
) else (
    echo.
    echo Failed to open port %portnumber% for protocol %protocol%.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpfmfm
SET /P pathaba=Path of file e.g. [D:\Apollo\filetomove.txt]
SET /P lochabta=Location to store e.g.[D:\Apollo]
IF %loggingoutput%==on move %pathaba% %lochabta% >>%~dp0manowaroutputlog.txt
move %pathaba% %lochabta%
IF %errorlevel%==1 (
   echo Warning! The program failed to move the file.
) ELSE (
echo Success! The file has been moved!
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpftpp
SET /P pathab=Path of file e.g. [D:\Apollo\filetocopy.txt]
SET /P lochabt=Location to store e.g.[D:\Apollo]
IF %loggingoutput%==on copy %pathab% %lochabt% >>%~dp0manowaroutputlog.txt
copy %pathab% %lochabt%
IF %errorlevel%==1 (
   echo Warning! The program failed to copy the file.
) ELSE (
echo Success! The file copy has been made.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:expelff
SET /P filed=Enter the Path of the File e.g. [D:\Apollo\filetodelete.txt]^>
IF %loggingoutput%==on del %filed% >>%~dp0manowaroutputlog.txt
del /F %filed%
IF %errorlevel%==1 (
   echo Warning! The file has not been deleted.
) ELSE (
echo Success! The file has been deleted.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpfdee
SET  /p DPXXM=Enter The directory path e.g. [D:\]^>
IF %loggingoutput%==on tree %DPXXM% >>%~dp0manowaroutputlog.txt
tree %DPXXM%
IF %errorlevel%==1 (
   echo Warning! The directory could not be called.
) ELSE (
echo Success! The directory was called successfully.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:cpfddd
IF %loggingoutput%==on wmic logicaldisk get name >>%~dp0manowaroutputlog.txt
wmic logicaldisk get name
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
REM logging section
IF %logging%==on echo WARNING! [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:dtt
echo DATE: %DATE%
echo TIME: %TIME%
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
IF %loggingoutput%==on echo DATE: %DATE% >>%~dp0manowaroutputlog.txt
IF %loggingoutput%==on echo TIME: %TIME% >>%~dp0manowaroutputlog.txt
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:shutdownn
shutdown /f
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:logofff
logoff
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:clsa
cls
goto clss
:colorrr
echo [usage]
echo "color 0A" - where 0 is the background color and A is the text color
echo.
echo [color codes]
echo 0 = Black       8 = Gray
echo 1 = Blue        9 = Light Blue
echo 2 = Green       A = Light Green
echo 3 = Aqua        B = Light Aqua
echo 4 = Red         C = Light Red
echo 5 = Purple      D = Light Purple
echo 6 = Yellow      E = Light Yellow
echo 7 = White       F = Bright White
echo.
SET /P CATSPALIX=%~dp0colorcontrol^>
%CATSPALIX%
IF %errorlevel%==1 (
   echo Warning! The program has failed to execute operation: %catspal%.
) ELSE (
echo Success! The program has successfully executed operation: %catspal%.
)
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:ipainfos
ECHO [IPv4-Adress] information, class and types.
ECHO.
ECHO [Class A]
ECHO Range: 1.0.0.0 u/i 126.255.255.255
ECHO - Network Prefix: the first octet is used for
ECHO                   the network portion
ECHO - Host Portion: the remaining three octets
ECHO                 are used for hosts within the network
ECHO Default Subnet Mask: 255.0.0.0
ECHO Number of Networks: 128
ECHO Number of Hosts per Network: ~16.7e6
ECHO Purpose: ISPs (internet service providers) / multinational organisations
ECHO.
ECHO [Class B]
ECHO Range: 128.0.0.0 u/i 191.255.255.255
ECHO - Network Prefix: the first two octets
ECHO                   are used for the network portion
ECHO - Host Portion: the last two octets are used for hosts
ECHO Default Subnet Mask: 255.255.0.0
ECHO Number of Networks: 16,384
ECHO Number of Hosts per Network: ~65e3
ECHO Purpose: Medium to large networks such as
ECHO          universities or large company's
ECHO.
ECHO [Class C]
ECHO Range: 192.0.0.0 u/i 223.255.255.255
ECHO - Network Prefix: the first three octets are used for
ECHO                   the network portion
ECHO - Host Portion: the last octet is used for hosts
ECHO Default Subnet Mask: 255.255.255.0
ECHO Number of Networks: 2.1e6
ECHO Number of hosts per network: 254
ECHO Purpose: small networks as businesses or home networks
ECHO.
ECHO [Class D] multicast
ECHO Range: 224.0.0.0 u/i 239.255.255.255
ECHO - Class D is reserved for multicast traffic,
ECHO   where data is send to a group
ECHO   rather than a single device.
ECHO - Not used for traditional IP networking
ECHO   like class A, B, or C.
ECHO - Does not support subnet masks!!!
ECHO.
ECHO [Class E] Experimental
ECHO Range: 240.0.0.0 u/i 255.255.255.255
ECHO - Reserved for experimental purposes and research
ECHO - not used in regular network communications
ECHO.
ECHO [Special IP-Adress Ranges]
ECHO 127.X.X.X  - reserved for loopbacks and testing
ECHO (under normal conditions: 127.0.0.1)
ECHO.
ECHO 169.254.0.1 u/i 169.254.255.254 - APIPA (Automatic Private IP Addressing)
ECHO                                   automatically assigned by a device
ECHO                                   when it cannot obtain an IP address
ECHO                                   from a DHCP server.
ECHO Network ID: 169.254.0.0
ECHO Subnet Mask: 255.255.0.0
ECHO Usable IP range: 169.254.0.1 to 169.254.255.254
ECHO (excluding the first and last addresses,
ECHO which are reserved for the network and broadcast addresses).
ECHO.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:nmaps
echo [NMAP] command cheat sheet.
ECHO [EXAMPLE]                              [DESCRIPTION]
ECHO nmap 192.168.1.1                         Scan a single IP
ECHO nmap 192.168.1.1 192.168.2.1             Scan specific IPs
ECHO nmap 192.168.1.1-254                     Scan a range
ECHO nmap scanme.nmap.org                     Scan a domain
ECHO nmap 192.168.1.0/24           ---        Scan using CIDR notation
ECHO nmap -iL targets.txt                     Scan targets from a file
ECHO nmap -iR 100                             Scan 100 random hosts
ECHO nmap -exclude 192.168.1.1                Exclude listed hosts
ECHO nmap 192.168.1.1 -sS                     TCP SYN port scan (Default)
ECHO nmap 192.168.1.1 -sT                     TCP connect port scan (Default without root privilege)
ECHO nmap 192.168.1.1 -sU                     UDP port scan
ECHO nmap 192.168.1.1 -sA                     TCP ACK port scan
ECHO nmap 192.168.1.1 -sW           ---       TCP Window port scan
ECHO nmap 192.168.1.1 -sM                     TCP Maimon port scan
ECHO nmap 192.168.1.1-3 -sL                   No Scan. List targets only
ECHO nmap 192.168.1.1/24 -sn                  Disable port scanning. Host discovery only.
ECHO nmap 192.168.1.1-5 -Pn                   Disable host discovery. Port scan only.
ECHO nmap 192.168.1.1-5 -PS22-25,80           TCP SYN discovery on port x.
ECHO                                          Port 80 by default
ECHO nmap 192.168.1.1-5 -PA22-25,80           TCP ACK discovery on port x.
ECHO                                          Port 80 by default
ECHO nmap 192.168.1.1-5 -PU53        ---         UDP discovery on port x.
ECHO                                             Port 40125 by default
ECHO nmap 192.168.1.1-1/24 -PR                   ARP discovery on local network
ECHO nmap 192.168.1.1 -n                         Never do DNS resolution
ECHO nmap 192.168.1.1 -p 21             ---      Port scan for port x
ECHO nmap 192.168.1.1 -p 21-100                  Port range
ECHO nmap 192.168.1.1 -p U:53,T:21-25,80         Port scan multiple TCP and UDP ports
ECHO nmap 192.168.1.1 -p-                        Port scan all ports
ECHO nmap 192.168.1.1 -p http,https              Port scan from service name
ECHO nmap 192.168.1.1 -F                         Fast port scan (100 ports)
ECHO nmap 192.168.1.1 -top-ports 2000            Port scan the top x ports
ECHO nmap 192.168.1.1 -p-65535                   Leaving off initial port in range makes the scan start at port 1
ECHO nmap 192.168.1.1 -p0-             ---       Leaving off end port in range makes the scan go through to port 65535
ECHO nmap 192.168.1.1 -sV                        Attempts to determine the version of the service running on port
ECHO nmap 192.168.1.1 -sV -version-intensity 8   Intensity level 0 to 9. Higher number increases possibility of correctness
ECHO nmap 192.168.1.1 -sV -version-light         Enable light mode. Lower possibility of correctness. Faster
ECHO nmap 192.168.1.1 -sV -version-all           Enable intensity level 9. Higher possibility of correctness. Slower
ECHO -A        nmap 192.168.1.1 -A               Enables OS detection, version detection, script scanning, and traceroute
ECHO [OS Detection]
ECHO nmap 192.168.1.1 -O                         Remote OS detection using TCP/IP stack fingerprinting
ECHO nmap 192.168.1.1 -O -osscan-limit           If at least one open and one closed TCP port are not found it will not try OS detection against host
ECHO nmap 192.168.1.1 -O -osscan-guess           Makes Nmap guess more aggressively
ECHO nmap 192.168.1.1 -O -max-os-tries 1         Set the maximum number x of OS detection tries against a target
ECHO nmap 192.168.1.1 -A                         Enables OS detection, version detection, script scanning, and traceroute
ECHO nmap 192.168.1.1 -T0                        Paranoid (0) Intrusion Detection System evasion
ECHO nmap 192.168.1.1 -T1                        Sneaky (1) Intrusion Detection System evasion
ECHO nmap 192.168.1.1 -T2                        Polite (2) slows down the scan to use less bandwidth and use less target machine resources
ECHO nmap 192.168.1.1 -T3                        Normal (3) which is default speed
ECHO nmap 192.168.1.1 -T4                        Aggressive (4) speeds scans; assumes you are on a reasonably fast and reliable network
ECHO nmap 192.168.1.1 -T5                        Insane (5) speeds scan; assumes you are on an extraordinarily fast network
ECHO [NSE Scripts]
ECHO [EXAMPLE]                                                                    [DESCRIPTION]
ECHO nmap 192.168.1.1 -sC                                                           Scan with default NSE scripts. Considered useful for discovery and safe
ECHO nmap 192.168.1.1 -script default                ---                            Scan with default NSE scripts. Considered useful for discovery and safe
ECHO nmap 192.168.1.1 -script=banner                                                Scan with a single script. Example banner
ECHO nmap 192.168.1.1 -script=http*                                  ---            Scan with a wildcard. Example http
ECHO nmap 192.168.1.1 -script=http,banner                                           Scan with two scripts. Example http and banner
ECHO nmap 192.168.1.1 -script "not intrusive"                                       Scan default, but remove intrusive scripts
ECHO nmap -script snmp-sysdescr -script-args snmpcommunity=admin 192.168.1.1        NSE script with arguments
ECHO [Useful NSE Script Examples]
ECHO [COMMAND]                                                                                                               [DESCRIPTION]
ECHO nmap -Pn -script=http-sitemap-generator scanme.nmap.org                               ---           ---                http site map generator
ECHO nmap -n -Pn -p 80 -open -sV -vvv -script banner,http-title -iR 1000                                                    Fast search for random web servers
ECHO nmap -Pn -script=dns-brute domain.com                                                                                  Brute forces DNS hostnames guessing subdomains
ECHO nmap -n -Pn -vv -O -sV -script smb-enum*,smb-ls,smb-mbenum,smb-os-discovery,smb-s*,smb-vuln*,smbv2* -vv 192.168.1.1    Safe SMB scripts to run
ECHO nmap -script whois* domain.com                                                                                         Whois query
ECHO nmap -p80 -script http-unsafe-output-escaping scanme.nmap.org                                                          Detect cross site scripting vulnerabilities
ECHO nmap -p80 -script http-sql-injection scanme.nmap.org                                                                   Check for SQL injections
ECHO [Firewall / IDS Evasion and Spoofing]
ECHO [EXAMPLE]                                                                  [DESCRIPTION]
ECHO nmap 192.168.1.1 -f                                                          Requested scan (including ping scans) use tiny fragmented IP packets. Harder for packet filters
ECHO nmap 192.168.1.1 -mtu 32                                                     Set your own offset size
ECHO nmap -D 192.168.1.101,192.168.1.102,192.168.1.103,192.168.1.23 192.168.1.1   Send scans from spoofed IPs
ECHO nmap -D decoy-ip1,decoy-ip2,your-own-ip,decoy-ip3,decoy-ip4 remote-host-ip   Above example explained
ECHO nmap -S www.microsoft.com www.facebook.com                                   Scan Facebook from Microsoft (-e eth0 -Pn may be required)
ECHO nmap -g 53 192.168.1.1                                                       Use given source port number
ECHO nmap -proxies http://192.168.1.1:8080, http://192.168.1.2:8080 192.168.1.1   Relay connections through HTTP/SOCKS4 proxies
ECHO nmap -data-length 200 192.168.1.1                                            Appends random data to sent packets
ECHO [Output]
ECHO [EXAMPLE]                                        [DESCRIPTION]
ECHO nmap 192.168.1.1 -oN normal.file                 Normal output to the file normal.file
ECHO nmap 192.168.1.1 -oX xml.file                    XML output to the file xml.file
ECHO nmap 192.168.1.1 -oG grep.file                   Grepable output to the file grep.file
ECHO nmap 192.168.1.1 -oA results                     Output in the three major formats at once
ECHO nmap 192.168.1.1 -oG -                           Grepable output to screen. -oN -, -oX - also usable
ECHO nmap 192.168.1.1 -oN file.file -append-output    Append a scan to a previous scan file
ECHO nmap 192.168.1.1 -v                              Increase the verbosity level (use -vv or more for greater effect)
ECHO nmap 192.168.1.1 -d                              Increase debugging level (use -dd or more for greater effect)
ECHO nmap 192.168.1.1 -reason                         Display the reason a port is in a particular state, same output as -vv
ECHO nmap 192.168.1.1 -open                           Only show open (or possibly open) ports
ECHO nmap 192.168.1.1 -T4 -packet-trace               Show all packets sent and received
ECHO nmap -iflist                                     Shows the host interfaces and routes
ECHO nmap -resume results.file                        Resume a scan
ECHO [Miscellaneous Nmap Flags]
ECHO [EXAMPLE]                                                [DESCRIPTION]
ECHO -6        nmap -6 2607:f0d0:1002:51::4                     Enable IPv6 scanning
ECHO -h        nmap -h                                          nmap help screen
ECHO [Other Useful Nmap Commands]
ECHO [COMMAND]                                                  [DESCRIPTION]
ECHO nmap -iR 10 -PS22-25,80,113,1050,35000 -v -sn                Discovery only on ports x, no port scan
ECHO nmap 192.168.1.1-1/24 -PR -sn -vv                            Arp discovery only on local network, no port scan
ECHO nmap -iR 10 -sn -traceroute                                  Traceroute to random targets, no port scan
ECHO nmap 192.168.1.1-50 -sL -dns-server 192.168.1.1              Query the Internal DNS for hosts, list targets only
ECHO nmap 192.168.1.1 --packet-trace                              Show the details of the packets that are sent and received during a scan and capture the traffic.
echo.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:portinfos
ECHO [ports] pls note that there is no info about: [tcp][udp] [sctp][dccp].
ECHO.
ECHO 0 in programming apis (not in communication between hosts), requests a system-allocated (dynamic) port[6]
ECHO 1 tcp port service multiplexer (tcpmux). Historic. Both tcp and udp have been to tcpmux by iana, [2] but by design only tcp is specified. [7]
ECHO 2 compressnet (management utility)[3]
ECHO 3 compressnet (compression process)[3]
ECHO 5 remote job entry[8] was historically using socket 5 in its old socket form, while mib pim has identified it as tcp/5[9] and iana has both tcp and udp 5 to it.
ECHO 7 echo protocol[10][11]
ECHO 9 [12] discard protocol[13] , wake-on-lan[14]
ECHO 11 active users (systat service)[15][16]
ECHO 13 daytime protocol[17]
ECHO 15 previously netstat service[2][15]
ECHO 17 quote of the day (qotd)[18]
ECHO 18 message send protocol[19][20]
ECHO 19 character generator protocol (chargen)[21]
ECHO 20 [12] file transfer protocol (ftp) data transfer[11]
ECHO 21 [12] file transfer protocol (ftp) control (command)[11][12][22][23]
ECHO 22 [12] secure shell (ssh), [11] secure logins, file transfers (scp, sftp) and port forwarding
ECHO 23 telnet protocolunencrypted text communications[11][24]
ECHO 25 simple mail transfer protocol (smtp), [11][25] used for email routing between mail servers
ECHO 27 nsw-fe (nsw user system fe)[3]
ECHO 28 palo alto networks' panorama high availability (ha) sync encrypted port. [26]
ECHO 29 msg-icp (msg icp)[3]
ECHO 31 msg-auth (msg authentication)[3]
ECHO 33 dsp (display support protocol)[3]
ECHO 37 time protocol[27]
ECHO 38 rap (route access protocol)[3]
ECHO 39 rlp (resource location protocol)[3]
ECHO 41 graphics (graphics)[3]
ECHO 42 host name server protocol[28]
ECHO 43 whois protocol[29][30][31]
ECHO 44 mpm-flags (mpm flags protocol)[3]
ECHO 45 mpm (message processing module [recv])[3]
ECHO 46 mpm-snd (mpm [default send])[3]
ECHO 47 [RESERVED] ???
ECHO 48 auditd (digital audit daemon)[3]
ECHO 49 tacacs login host protocol. [32] tacacs+, still in draft which is an improved but distinct version of tacacs, only uses tcp 49. [33]
ECHO 50 re-mail-ck (remote mail checking protocol)[3]
ECHO 51 historically used for interface message processor logical address management, [34] entry has been removed by iana on 2013-05-25
ECHO 52 xerox network systems (xns) time protocol. Despite this port being by iana, the service is meant to work on spp (ancestor of ipx/spx), instead of tcp/ip. [35]
ECHO 53 domain name system (dns)[36][11]
ECHO 54 xerox network systems (xns) clearinghouse (name server). Despite this port being by iana, the service is meant to work on spp (ancestor of ipx/spx), instead of tcp/ip. [35]
ECHO 55 isi-gl (isi graphics language)[3]
ECHO 56 xerox network systems (xns) authentication protocol. Despite this port being by iana, the service is meant to work on spp (ancestor of ipx/spx), instead of tcp/ip. [35]
ECHO 58 xerox network systems (xns) mail. Despite this port being by iana, the service is meant to work on spp (ancestor of ipx/spx), instead of tcp/ip. [35]
ECHO 61 historically to the niftp-based mail protocol, [37] but was never documented in the related ien. [38] the port number entry was removed from iana's registry on 2017-05-18. [2]
ECHO 62 acas (aca services)[3]
ECHO 63 whoispp (whois++)[3]
ECHO 64 covia (communications integrator (ci))[3]
ECHO 65 tacacs-ds (tacacs-database service)[3]
ECHO 66 sql-net (oracle sql*net)[3]
ECHO 67 bootstrap protocol (bootp) server; [11] also used by dynamic host configuration protocol (dhcp)
ECHO 68 bootstrap protocol (bootp) client; [11] also used by dynamic host configuration protocol (dhcp)
ECHO 69 trivial file transfer protocol (tftp)[11][39][40][41]
ECHO 70 gopher protocol[42]
ECHO 7174 netrjs protocol[43][44][45]
ECHO 76 deos (distributed external object store)[3]
ECHO 78 vettcp (vettcp)[3]
ECHO 79 finger protocol[11][46][47]
ECHO 80 [12] hypertext transfer protocol (http)[48][49] uses tcp in versions 1. X and 2. Http/3 uses quic, [50] a transport protocol on top of udp.
ECHO 81 torpark onion routing[verification needed]
ECHO 82 xfer (xfer utility)[3]
ECHO 82 torpark control[verification needed]
ECHO 83 mit-ml-dev (mit ml device)[3]
ECHO 84 ctf (common trace facility)[3]
ECHO 85 mit-ml-dev (mit ml device)[3]
ECHO 86 mfcobol (micro focus cobol)[3]
ECHO 88 kerberos[11][51][52] authentication system
ECHO 89 su-mit-tg (su/mit telnet gateway)[3]
ECHO 90 dnsix (dnsix security attribute token map)[3]
ECHO 90 pointcast (dotcom)[2]
ECHO 91 mit-dov (mit dover spooler)[3]
ECHO 92 npp (network printing protocol)[3]
ECHO 93 dcp (device control protocol)[3]
ECHO 94 objcall (tivoli object dispatcher)[3]
ECHO 95 supdup, terminal-independent remote login[53]
ECHO 96 dixie (dixie protocol specification)[3]
ECHO 97 swift-rvf (swift remote virtual file protocol)[3]
ECHO 98 tacnews (tac news)[3]
ECHO 99 metagram (metagram relay)[3]
ECHO 101 nic host name[54]
ECHO 102 iso transport service access point (tsap) class 0 protocol; [55][56]
ECHO 104 digital imaging and communications in medicine (dicom; also port 11112)
ECHO 105 ccso nameserver[57]
ECHO 106 macos server, (macos) password server[11]
ECHO 107 remote user telnet service (rtelnet)[58]
ECHO 108 ibm systems network architecture (sna) gateway access server
ECHO 109 post office protocol, version 2 (pop2)[59]
ECHO 110 post office protocol, version 3 (pop3)[11][60][61]
ECHO 111 open network computing remote procedure call (onc rpc, sometimes referred to as sun rpc)
ECHO 113 ident, authentication service/identification protocol, used by irc servers to identify users
ECHO     authentication service (auth), the predecessor to identification protocol. Used to determine a user's identity of a particular tcp connection. [63]
ECHO 115 simple file transfer protocol[64]
ECHO 117 uucp mapping project (path service)[65]
ECHO 118 structured query language (sql) services[jargon]
ECHO 119 network news transfer protocol (nntp), [11] retrieval of newsgroup messages[66][67]
ECHO 123 network time protocol (ntp), used for time synchronization[11]
ECHO 126 formerly unisys unitary login, renamed by unisys to nxedit. Used by unisys programmer's workbench for clearpath mcp, an ide for unisys mcp software development
ECHO 135 dce endpoint resolution microsoft epmap (end point mapper), also known as dce/rpc locator service, [68] used to remotely manage services including dhcp server,
ECHO     dns server and wins. Also used by dcom
ECHO 137 netbios name service, used for name registration and resolution[69][70]
ECHO 138 netbios datagram service[11][69][70]
ECHO 139 netbios session service[69][70]
ECHO 143 internet message access protocol (imap), [11] management of electronic mail messages on a server[71]
ECHO 151 hems
ECHO 152 background file transfer program (bftp)[72][importance? ]
ECHO 153 simple gateway monitoring protocol (sgmp), a protocol for remote inspection and alteration of gateway management information[73]
ECHO 156 structured query language (sql) service[jargon]
ECHO 158 distributed mail system protocol (dmsp, sometimes referred to as pcmail)[74][importance? ]
ECHO 161 simple network management protocol (snmp)[65]
ECHO 162 simple network management protocol trap (snmptrap)[65]
ECHO 165 xerox
ECHO 169 send
ECHO 170 network postscript print server
ECHO 177 x display manager control protocol (xdmcp), used for remote logins to an x display manager server[75][self-published source]
ECHO 179 [12] border gateway protocol (bgp), [76] used to exchange routing and reachability information among autonomous systems (as) on the internet
ECHO 180 ris
ECHO 194 internet relay chat (irc)[77]
ECHO 199 snmp unix multiplexer (smux)[78]
ECHO 201 appletalk routing maintenance
ECHO 209 quick mail transfer protocol[79][self-published source]
ECHO 210 ansi z39.50
ECHO 213 internetwork packet exchange (ipx)
ECHO 218 message posting protocol (mpp)
ECHO 220 internet message access protocol (imap), version 3
ECHO 259 efficient short remote operations (esro)
ECHO 262 arcisdms
ECHO 264 border gateway multicast protocol (bgmp)
ECHO 280 http-mgmt
ECHO 300 thinlinc web access, spartan protocol [80]
ECHO 308 novastor online backup
ECHO 311 macos server admin[11] (officially appleshare ip web administration[2])
ECHO 312 macos xsan administration[11]
ECHO 318 pkix time stamp protocol (tsp)
ECHO 319 precision time protocol (ptp) event messages
ECHO 320 precision time protocol (ptp) general messages
ECHO 323 resource public key infrastructure[81]
ECHO 350 mapping of airline traffic over internet protocol (matip) type a
ECHO 351 matip type b
ECHO 356 cloanto-net-1 (used by cloanto amiga explorer and vms)
ECHO 366 on-demand mail relay (odmr)
ECHO 369 rpc2portmap
ECHO 370 codaauth2, coda authentication server securecast1, outgoing packets to nai's securecast servers[82]as of 2000
ECHO 371 clearcase albd
ECHO 376 amiga envoy network inquiry protocol
ECHO 383 hp data alarm manager
ECHO 384 a remote network server system
ECHO 387 aurp (appletalk update-based routing protocol)[83]
ECHO 388 unidata ldm near real-time data distribution protocol[84][self-published source][85][self-published source]
ECHO 389 lightweight directory access protocol (ldap)[11]
ECHO 399 digital equipment corporation decnet+ (phase v) over tcp/ip (rfc1859)
ECHO 401 uninterruptible power supply (ups)
ECHO 427 service location protocol (slp)[11]
ECHO 433 nntp, part of network news transfer protocol
ECHO 434 mobile ip agent (rfc 5944)
ECHO 443 [12] hypertext transfer protocol secure (https)[48][49] uses tcp in versions 1. X and 2. Http/3 uses quic, [50] a transport protocol on top of udp.
ECHO 444 simple network paging protocol (snpp), rfc 1568
ECHO 445 microsoft-ds (directory services) active directory, [86] windows shares microsoft-ds (directory services) smb[11] file sharing
ECHO 464 kerberos change/set password
ECHO 465[note 1] message submission over tls protocol[87][88] url rendezvous directory for cisco ssm[87]
ECHO 475 tcpnethaspsrv, aladdin knowledge systems hasp services
ECHO 476490 centro software erp[89] ports
ECHO 491 go-global remote access and application publishing software
ECHO 497 retrospect
ECHO 500 internet security association and key management protocol (isakmp) / internet key exchange (ike)[11]
ECHO 502 modbus protocol
ECHO 504 citadel, multiservice protocol for dedicated clients for the citadel groupware system
ECHO 510 firstclass protocol (fcp), used by firstclass client/server groupware system
ECHO 512 rexec, remote process execution comsat, together with biff
ECHO 513 rlogin who[65]
ECHO 514 remote shell, used to execute non-interactive commands on a remote system (remote shell, rsh, remsh) syslog, [11] used for system logging
ECHO 515 line printer daemon (lpd), [11] print service
ECHO 517 talk
ECHO 518 ntalk
ECHO 520 efs, extended file name server routing information protocol (rip)
ECHO 521 routing information protocol next generation (ripng)
ECHO 524 netware core protocol (ncp) is used for a variety things such as access to primary netware server resources, time synchronization, etc.
ECHO 525 timed, timeserver
ECHO 530 remote procedure call (rpc)
ECHO 532 netnews[11]
ECHO 533 netwall, for emergency broadcasts
ECHO 540 unix-to-unix copy protocol (uucp)
ECHO 542 commerce (commerce applications)
ECHO 543 klogin, kerberos login
ECHO 544 kshell, kerberos remote shell
ECHO 546 dhcpv6 client
ECHO 547 dhcpv6 server
ECHO 548 apple filing protocol (afp) over tcp[11]
ECHO 550 new-rwho, new-who[65]
ECHO 554 real time streaming protocol (rtsp)[11]
ECHO 556 remotefs, rfs, rfs_server
ECHO 560 rmonitor, remote monitor
ECHO 561 monitor
ECHO 563 nntp over tls/ssl (nntps)
ECHO 564 9p (plan 9)
ECHO 585 previously for use of internet message access protocol over tls/ssl (imaps), now deregistered in favour of port 993. [90]
ECHO 587 email message submission (longer preferred; see port 465. )[88][11][91]
ECHO 591 filemaker 6.0 (and later) web sharing (http alternate, also see port 80)
ECHO 593 http rpc ep map, remote procedure call over hypertext transfer protocol, often used by distributed component object model services and microsoft exchange server
ECHO 601 reliable syslog service  used for system logging
ECHO 604 tunnel profile, [92] a protocol for beep peers to form an application layer tunnel
ECHO 623 asf remote management and control protocol (asf-rmcp) & ipmi remote management protocol
ECHO 625 open directory proxy (odproxy)[11]
ECHO 631 internet printing protocol (ipp)[11] common unix printing system (cups) administration console (extension to ipp)
ECHO 635 rlz dbase
ECHO 636 lightweight directory access protocol over tls/ssl (ldaps)[11]
ECHO 639 multicast source discovery protocol, msdp
ECHO 641 supportsoft nexus remote command (control/listening), a proxy gateway connecting remote control traffic
ECHO 643 sanity
ECHO 646 label distribution protocol (ldp), a routing protocol used in mpls networks
ECHO 647 dhcp failover protocol[93]
ECHO 648 registry registrar protocol (rrp)[94]
ECHO 651 ieee-mms
ECHO 653 supportsoft nexus remote command (data), a proxy gateway connecting remote control traffic
ECHO 654 media management system (mms) media management protocol (mmp)[95]
ECHO 655 tinc vpn daemon
ECHO 657 ibm rmc (remote monitoring and control) protocol, used by system p5 aix integrated virtualization manager (ivm)[96] and hardware management console to connect managed logical-
ECHO     partitions (lpar) to enable dynamic partition reconfiguration.
ECHO 660 macos server administration, [2] version 10.4 and earlier[11]
ECHO 666 doom, the first online first-person shooter airserv-ng, [97] aircrack-ng's server for remote-controlling wireless devices
ECHO 674 application configuration access protocol (acap)
ECHO 684 corba iiop ssl[98]
ECHO 688 realm-rusd (applianceware server appliance management protocol)
ECHO 690 velneo application transfer protocol (vatp)
ECHO 691 ms exchange routing
ECHO 694 linux-ha high-availability heartbeat
ECHO 695 ieee media management system over ssl (ieee-mms-ssl)[99]
ECHO 698 optimized link state routing (olsr)
ECHO 700 extensible provisioning protocol (epp), a protocol for communication between domain name registries and registrars (rfc 5734)
ECHO 701 link management protocol (lmp), [100] a protocol that runs between a pair of nodes and is used to manage traffic engineering (te) links
ECHO 702 iris[101][102] (internet registry information service) over beep (blocks extensible exchange protocol)[103] (rfc 3983)
ECHO 706 secure internet live conferencing (silc)
ECHO 711 cisco tag distribution protocol[104][105][106]being replaced by the mpls label distribution protocol[107]
ECHO 712 topology broadcast based on reverse-path forwarding routing protocol (tbrpf; rfc 3684)
ECHO 749 kerberos administration[11]
ECHO 750 kerberos-iv, kerberos version iv
ECHO 751 kerberos_master, kerberos authentication
ECHO 752 passwd_server, kerberos password (kpasswd) server
ECHO 753 reverse routing header (rrh)[108] userreg_server, kerberos userreg server
ECHO 754 tell send krb5_prop, kerberos v5 slave propagation
ECHO 760 krbupdate [kreg], kerberos registration
ECHO 782 conserver serial-console management server
ECHO 783 spamassassin spamd daemon
ECHO 800 mdbs-daemon
ECHO 802 modbus/tcp security[109]
ECHO 808 microsoft net. Tcp port sharing service
ECHO 829 certificate management protocol[110]
ECHO 830 netconf over ssh
ECHO 831 netconf over beep
ECHO 832 netconf for soap over https
ECHO 833 netconf for soap over beep
ECHO 843 adobe flash[111]
ECHO 847 dhcp failover protocol
ECHO 848 group domain of interpretation (gdoi) protocol
ECHO 853 dns over tls (rfc 7858) dns over quic or dns over dtls[112]
ECHO 860 iscsi (rfc 3720)
ECHO 861 owamp control (rfc 4656)
ECHO 862 twamp control (rfc 5357)
ECHO 873 rsync file synchronization protocol
ECHO 888 cddbp, cd database (cddb) protocol (cddbp) ibm endpoint manager remote control
ECHO 897 brocade smi-s rpc
ECHO 898 brocade smi-s rpc ssl
ECHO 902 vmware esxi[113][114]
ECHO 903 vmware esxi[113][114]
ECHO 953 bind remote name daemon control (rndc)[115][116]
ECHO 981 remote https management for firewall devices running embedded check point vpn-1 software[117]
ECHO 987 sony playstation wake on lanmicrosoft remote web workplace, a feature of windows small business server[118]
ECHO 988 lustre (file system)[119] protocol (data).
ECHO 989 ftps protocol (data), ftp over tls/ssl
ECHO 990 ftps protocol (control), ftp over tls/ssl
ECHO 991 netnews administration system (nas)[120]
ECHO 992 telnet protocol over tls/ssl
ECHO 993 internet message access protocol over tls/ssl (imaps)[11]
ECHO 994 previously to internet relay chat over tls/ssl (ircs), but was not used in common practice.
ECHO 995 post office protocol 3 over tls/ssl (pop3s)[11]
ECHO 1010 thinlinc web-based administration interface[121]
ECHO 1023 z/os network file system (nfs) (potentially ports 9911023)[77][78][122]
ECHO 1024 1025 network blackjack[125]
ECHO 1027 Native IPv6 behind IPv4-to-IPv4 NAT Customer Premises Equipment (6a44)[126]
ECHO 1029 Microsoft DCOM services
ECHO 1058 nim, IBM AIX Network Installation Manager (NIM)
ECHO 1059 nimreg, IBM AIX Network Installation Manager (NIM)
ECHO 1080 SOCKS proxy
ECHO 1085 WebObjects[11]
ECHO 1098 rmiactivation, Java remote method invocation (RMI) activation
ECHO 1099 rmiregistry, Java remote method invocation (RMI) registry
ECHO 1100 SaltoSystems - Handshake for IP-Components
ECHO 1112 ESET virus updates[127]
ECHO 1113 [note 2][128] [129] Licklider Transmission Protocol (LTP) delay tolerant networking protocol
ECHO 1119 Battle.net chat/game protocol, used by Blizzard's games[130]
ECHO 1167 Cisco IP SLA (Service Assurance Agent)
ECHO 1194 OpenVPN
ECHO 1198 The cajo project Free dynamic transparent distributed computing in Java
ECHO 1212 Equalsocial Fediverse protocol
ECHO 1214 Kazaa
ECHO 1220 QuickTime Streaming Server administration[11]
ECHO 1234 Infoseek search agent VLC media player default port for UDP/RTP stream
ECHO 1241 Nessus Security Scanner
ECHO 1270 Microsoft System Center Operations Manager (SCOM) (formerly Microsoft Operations Manager (MOM)) agent
ECHO 1293 Internet Protocol Security (IPSec)
ECHO 1311 Windows RxMon.exe Dell OpenManage HTTPS[131]
ECHO 1314 Festival Speech Synthesis System server[132]
ECHO 1319 AMX ICSP (Protocol for communications with AMX control systems devices)
ECHO 1337 Men&Mice DNS[133] Strapi[134] Razer Chroma SDK Server[135] Sails.js default port[136]
ECHO 1341 Qubes (Manufacturing Execution System)
ECHO 1344 Internet Content Adaptation Protocol
ECHO 1352 IBM Lotus Notes/Domino (RPC) protocol
ECHO 1360 Mimer SQL
ECHO 1414 IBM WebSphere MQ (formerly known as MQSeries)
ECHO 1417 Timbuktu Service 1 Port
ECHO 1418 Timbuktu Service 2 Port
ECHO 1419 Timbuktu Service 3 Port
ECHO 1420 Timbuktu Service 4 Port
ECHO 1431 Reverse Gossip Transport Protocol (RGTP), used to access a General-purpose Reverse-Ordered Gossip Gathering System (GROGGS) bulletin board,
ECHO      such as that implemented on the Cambridge University's Phoenix system
ECHO 1433 Microsoft SQL Server database management system (MSSQL) server
ECHO 1434 Microsoft SQL Server database management system (MSSQL) monitor
ECHO 1476 WiFi Pineapple Hak5.
ECHO 1481 AIRS data interchange.
ECHO 1492 Sid Meier's CivNet, a multiplayer remake of the original Sid Meier's Civilization game[citation needed]
ECHO 1494 Citrix Independent Computing Architecture (ICA)[137]
ECHO 1500 IBM Tivoli Storage Manager server[138]
ECHO 1501 IBM Tivoli Storage Manager client scheduler[138]
ECHO 1503 Windows Live Messenger (Whiteboard and Application Sharing)[139]
ECHO 1512 Microsoft's Windows Internet Name Service (WINS)
ECHO 1513 Garena game client[citation needed]
ECHO 1521 nCUBE License Manager Oracle database default listener, in future releases[when?][140] official port 2483 (TCP/IP) and 2484 (TCP/IP with SSL)
ECHO 1524 ingreslock, ingres
ECHO 1527 Oracle Net Services, formerly known as SQL*Net[141] Apache Derby Network Server[142]
ECHO 1533 IBM Sametime Virtual Places Chat
ECHO 1534 Eclipse Target Communication Framework[143]
ECHO 1540 1C:Enterprise server agent (ragent)[144][145]
ECHO 1541 1C:Enterprise master cluster manager (rmngr)[144]
ECHO 1542 1C:Enterprise configuration repository server[144]
ECHO 1545 1C:Enterprise cluster administration server (RAS)[144]
ECHO 1547 Laplink
ECHO 1550 1C:Enterprise debug server[144] Gadu-Gadu (direct client-to-client)[citation needed]
ECHO 1560 U/I 1590 1C:Enterprise cluster working processes[144]
ECHO 1581 MIL STD 2045-47001 VMF IBM Tivoli Storage Manager web client[138]
ECHO 1582 U/I 1583 IBM Tivoli Storage Manager server web interface[138]
ECHO 1583 Pervasive PSQL[146]
ECHO 1589 Cisco VLAN Query Protocol (VQP)
ECHO 1604 DarkComet remote administration tool (RAT)[citation needed]
ECHO 1626 iSketch[147]
ECHO 1627 iSketch[147]
ECHO 1628 LonTalk normal
ECHO 1629 LonTalk urgent
ECHO 1645 Early deployment of RADIUS before RFC standardization was done using UDP port number 1645.
ECHO      Enabled for compatibility reasons by default on Cisco[citation needed] and Juniper Networks RADIUS servers.
ECHO      [148] Official port is 1812. TCP port 1645 must not be used.[149]
ECHO 1646 Old radacct port,[when?] RADIUS accounting protocol.
ECHO      Enabled for compatibility reasons by default on Cisco[citation needed] and Juniper Networks RADIUS servers.
ECHO      [148] Official port is 1813. TCP port 1646 must not be used.[149]
ECHO 1666 Perforce[150]
ECHO 1677 Novell GroupWise clients in client/server access mode
ECHO 1688 Microsoft Key Management Service (KMS) for Windows Activation[151]
ECHO 1701 Layer 2 Forwarding Protocol (L2F) Layer 2 Tunneling Protocol (L2TP)[11]
ECHO 1707 Windward Studios games (vdmplay) L2TP/IPsec, for establishing an initial connection[152]
ECHO 1714 U/I 1764 KDE Connect[153]
ECHO 1716 America's Army, a massively multiplayer online game (MMO)[154]
ECHO 1719 H.323 registration and alternate communication
ECHO 1720 H.323 call signaling
ECHO 1723 Point-to-Point Tunneling Protocol (PPTP)[11]
ECHO 1755 Microsoft Media Services (MMS, ms-streaming)
ECHO 1761 Novell ZENworks[155][156]
ECHO 1776 Emergency management information system
ECHO 1801 Microsoft Message Queuing
ECHO 1812 RADIUS authentication protocol, radius
ECHO 1813 RADIUS accounting protocol, radius-acct
ECHO 1863 Microsoft Notification Protocol (MSNP), used by the Microsoft Messenger service and a number of instant messaging Messenger clients
ECHO 1880 Node-RED[157]
ECHO 1883 MQTT (formerly MQ Telemetry Transport)
ECHO 1900 Simple Service Discovery Protocol (SSDP),[11] discovery of UPnP devices
ECHO 1935 Macromedia Flash Communications Server MX,
ECHO      the precursor to Adobe Flash Media Server before Macromedia's acquisition by Adobe on December 3,
ECHO      2005 Real Time Messaging Protocol (RTMP)[citation needed], primarily used in Adobe Flash[158]
ECHO 1965 Gemini, a lightweight, collaboratively designed protocol, striving to fill the gap between Gopher and HTTP[159]
ECHO 1967 Cisco IOS IP Service Level Agreements (IP SLAs) Control Protocol[citation needed]
ECHO 1972 InterSystems Caché, and InterSystems IRIS versions 2020.3 and later
ECHO 1984 Big Brother Arweave mining node[160]
ECHO 1985 Cisco Hot Standby Router Protocol (HSRP)[161][self-published source]
ECHO 1998 Cisco X.25 over TCP (XOT) service
ECHO 2000 Cisco Skinny Client Control Protocol (SCCP)
ECHO 2010 Artemis: Spaceship Bridge Simulator[162]
ECHO 2033 Civilization IV multiplayer[163]
ECHO 2049 Network File System (NFS)[11]
ECHO 2056 Civilization IV multiplayer[163]
ECHO 2080 Autodesk NLM (FLEXlm)
ECHO 2082 cPanel default[164]
ECHO 2083 Secure RADIUS Service (radsec) cPanel default TLS[164]
ECHO 2086 GNUnet WebHost Manager default[164]
ECHO 2087 WebHost Manager default TLS[164]
ECHO 2095 cPanel default web mail[164]
ECHO 2096 cPanel default TLS web mail[164]
ECHO 2100 Warzone 2100 multiplayer[citation needed]
ECHO 2101 Networked Transport of RTCM via Internet Protocol (NTRIP)[citation needed]
ECHO 2102 Zephyr Notification Service server
ECHO 2103 Zephyr Notification Service serv-hm connection
ECHO 2104 Zephyr Notification Service hostmanager
ECHO 2123 GTP control messages (GTP-C)
ECHO 2137 2142 TDMoIP (TDM over IP)
ECHO 2152 GTP user data messages (GTP-U)
ECHO 2159 GDB remote debug port
ECHO 2181 EForward-document transport system Apache ZooKeeper default client port[citation needed]
ECHO 2195 Apple Push Notification Service, binary, gateway.[11][165] Deprecated March 2021.[166]
ECHO 2196 Apple Push Notification Service, binary, feedback.[11][165] Deprecated March 2021.[166]
ECHO 2197 Apple Push Notification Service, HTTP/2, JSON-based API.
ECHO 2210 NOAAPORT Broadcast Network
ECHO 2211 EMWIN
ECHO 2221 ESET anti-virus updates[127]
ECHO 2222 EtherNet/IP implicit messaging for IO data DirectAdmin Access[167]
ECHO 2222 U/I 2226 ESET Remote administrator[127]
ECHO 2240 General Dynamics Remote Encryptor Configuration Information Protocol (RECIPe)
ECHO 2261 CoMotion master
ECHO 2262 CoMotion backup
ECHO 2302 ArmA multiplayer[168] Halo: Combat Evolved multiplayer host[169]
ECHO 2303 ArmA multiplayer (default port for game +1)[168][170] Halo: Combat Evolved multiplayer listener[169]
ECHO 2305 ArmA multiplayer (default port for game +3)[168]
ECHO 2351 AIM game LAN network port[citation needed]
ECHO 2368 Ghost (blogging platform)[171]
ECHO 2369 Default for BMC Control-M/Server Configuration Agent
ECHO 2370 Default for BMC Control-M/Server, to allow the Control-M/Enterprise Manager to connect to the Control-M/Server
ECHO 2372 Default for K9 Web Protection/parental controls, content filtering agent[citation needed]
ECHO 2375 Docker REST API (plain)
ECHO 2376 Docker REST API (SSL)
ECHO 2377 Docker Swarm cluster management communications[172][self-published source]
ECHO 2379 CoreOS etcd client communication KGS Go Server[173]
ECHO 2380 CoreOS etcd server communication
ECHO 2389 OpenView Session Mgr
ECHO 2399 FileMaker Data Access Layer (ODBC/JDBC)
ECHO 2401 CVS version control system password-based server
ECHO 2404 IEC 60870-5-104, used to send electric power telecontrol messages between two systems via directly connected data circuits
ECHO 2424 OrientDB database listening for binary client connections[174]
ECHO 2427 Media Gateway Control Protocol (MGCP) media gateway
ECHO 2447 ovwdb—OpenView Network Node Manager (NNM) daemon
ECHO 2456 Valheim
ECHO 2459 XRPL
ECHO 2480 OrientDB database listening for HTTP client connections[174]
ECHO 2483 Oracle database listening for insecure client connections, replaces port 1521[when?]
ECHO 2484 Oracle database listening for SSL client connections
ECHO 2500 NetFS communication[175]
ECHO 2501 NetFS probe
ECHO 2535 Multicast Address Dynamic Client Allocation Protocol (MADCAP).[176] All standard messages are UDP datagrams.[177]
ECHO 2541 LonTalk/IP
ECHO 2546 U/I 2548 EVault data protection services
ECHO 2593 Ultima Online servers[citation needed]
ECHO 2598 Citrix Independent Computing Architecture (ICA) with Session Reliability; port 1494 without session reliability[137]
ECHO 2599 Ultima Online servers[citation needed]
ECHO 2628 DICT[178]
ECHO 2638 SQL Anywhere database server[179][180]
ECHO 2710 XBT Tracker.[181] UDP tracker extension is considered experimental.[182]
ECHO 2727 Media Gateway Control Protocol (MGCP) media gateway controller (call agent)
ECHO 2759 SuperTuxKart server [183]
ECHO 2775 Short Message Peer-to-Peer (SMPP)[citation needed]
ECHO 2809 corbaloc:iiop URL, per the CORBA 3.0.3 specification
ECHO 2811 gsi ftp, per the GridFTP specification
ECHO 2827 I2P BOB Bridge[184]
ECHO 2944 Megaco text H.248
ECHO 2945 Megaco binary (ASN.1) H.248
ECHO 2947 gpsd, GPS daemon
ECHO 2948 U/I 2949 WAP push Multimedia Messaging Service (MMS)
ECHO 2967 Symantec System Center agent (SSC-AGENT)
ECHO 2989 Zarkov Intelligent Agent Communication[185]
ECHO 3000 Ruby on Rails development default[186] Meteor development default[187][failed verification] Resilio Sync,
ECHO      [188] spun from BitTorrent Sync. Create React App, script to create single-page React applications
ECHO      [189] Gogs and Gitea (self-hosted Git service)[190] Grafana[191]
ECHO 3001 Honeywell Prowatch[192]
ECHO 3004 iSync[11]
ECHO 3010 KWS Connector
ECHO 3020 Common Internet File System (CIFS). See also port 445 for Server Message Block (SMB), a dialect of CIFS.
ECHO 3050 gds-db (Interbase/Firebird databases)
ECHO 3052 APC PowerChute Network
ECHO 3074 Xbox LIVE and Games for Windows  U/I  Live
ECHO 3101 BlackBerry Enterprise Server communication protocol[193]
ECHO 3128 Squid caching web proxy[194]
ECHO 3225 Fibre Channel over IP (FCIP)
ECHO 3233 WhiskerControl research control protocol
ECHO 3260 iSCSI
ECHO 3268 msft-gc, Microsoft Global Catalog (LDAP service which contains data from Active Directory forests)
ECHO 3269 msft-gc-ssl, Microsoft Global Catalog over SSL (similar to port 3268, LDAP over SSL)
ECHO 3283 Net Assistant,[11] a predecessor to Apple Remote Desktop Apple Remote Desktop 2.0 or later[11]
ECHO 3290 Virtual Air Traffic Simulation (VATSIM) network voice communication[citation needed]
ECHO 3305 Odette File Transfer Protocol (OFTP)
ECHO 3306 MySQL database system[11]
ECHO 3323 DECE GEODI Server
ECHO 3332 Thundercloud DataPath Overlay Control
ECHO 3333 Eggdrop, an IRC bot default port[195] Network Caller ID server CruiseControl.rb[196] OpenOCD (gdbserver)[197]
ECHO 3344 Repetier-Server
ECHO 3351 Pervasive PSQL[146]
ECHO 3386 GTP' 3GPP GSM/UMTS CDR logging protocol
ECHO 3389 Microsoft Terminal Server (RDP) officially registered as Windows Based Terminal (WBT)[198]
ECHO 3396 Novell NDPS Printer Agent
ECHO 3412 xmlBlaster
ECHO 3423 Xware xTrm Communication Protocol
ECHO 3424 Xware xTrm Communication Protocol over SSL
ECHO 3435 Pacom Security User Port
ECHO 3455 Resource Reservation Protocol (RSVP)
ECHO 3478 STUN, a protocol for NAT traversal[199] TURN, a protocol for NAT traversal[200] (extension to STUN) STUN Behavior Discovery.[201] See also port 5349.
ECHO 3478 U/I 3481 Microsoft Teams[202]
ECHO 3479 PlayStation Network[203]
ECHO 3480 PlayStation Network[203]
ECHO 3483 Slim Devices discovery protocol Slim Devices SlimProto protocol
ECHO 3493 Network UPS Tools (NUT)
ECHO 3503 MPLS LSP-echo Port
ECHO 3516 Smartcard Port
ECHO 3527 Microsoft Message Queuing
ECHO 3535 SMTP alternate[204]
ECHO 3544 Teredo tunneling
ECHO 3551 Apcupsd Information Port [205]
ECHO 3601 SAP Message Server Port[206]
ECHO 3632 Distcc, distributed compiler[11]
ECHO 3645 Cyc
ECHO 3655 Advanced Systems Concepts, Inc. ActiveBatch Exec Agent[207]
ECHO 3659 Apple SASL, used by macOS Server Password Server[11] Battlefield 4
ECHO 3667 Information Exchange
ECHO 3671 KNXnet/IP(EIBnet/IP)
ECHO 3689 Digital Audio Access Protocol (DAAP), used by Apple's iTunes and AirPlay[11]
ECHO 3690 Subversion (SVN)[11] version control system
ECHO 3702 Web Services Dynamic Discovery (WS-Discovery), used by various components of Windows Vista and later
ECHO 3721 ES File Explorer FTP server
ECHO 3724 Some Blizzard games[130] Club Penguin Disney online game for kids
ECHO 3725 Netia NA-ER Port
ECHO 3749 CimTrak[208] registered port
ECHO 3768 RBLcheckd server daemon
ECHO 3784 Bidirectional Forwarding Detection (BFD)for IPv4 and IPv6 (Single Hop) (RFC 5881)
ECHO 3785 VoIP program used by Ventrilo
ECHO 3799 RADIUS change of authorization
ECHO 3804 Harman Professional HiQnet protocol
ECHO 3825 RedSeal Networks client/server connection[citation needed]
ECHO 3826 WarMUX game server RedSeal Networks client/server connection[citation needed]
ECHO 3835 RedSeal Networks client/server connection[citation needed]
ECHO 3830 System Management Agent, developed and used by Cerner to monitor and manage solutions
ECHO 3856 ERP Server Application used by F10 Software
ECHO 3880 IGRS
ECHO 3868 Diameter base protocol (RFC 3588)
ECHO 3872 Oracle Enterprise Manager Remote Agent
ECHO 3900 udt_os, IBM UniData UDT OS[209]
ECHO 3960 Warframe online interaction[citation needed]
ECHO 3962 Warframe online interaction[citation needed]
ECHO 3978 OpenTTD game (masterserver and content service)
ECHO 3978 Palo Alto Networks' Panorama management of firewalls and log collectors & pre-PAN-OS 8.0 Panorama-to-managed devices software updates.[210]
ECHO 3979 OpenTTD game
ECHO 3999 Norman distributed scanning service
ECHO 4000 Diablo II game
ECHO 4001 Microsoft Ants game CoreOS etcd client communication
ECHO 4018 Protocol information and warnings[clarification needed]
ECHO 4035 IBM Rational Developer for System z Remote System Explorer Daemon
ECHO 4045 Solaris lockd NFS lock daemon/manager
ECHO 4050 Mud Master Chat protocol (MMCP)  U/I  Peer-to-peer communications between MUD clients.[211]
ECHO 4069 Minger Email Address Verification Protocol[212]
ECHO 4070 Amazon Echo Dot (Amazon Alexa) streaming connection with Spotify[213]
ECHO 4089 OpenCORE Remote Control Service
ECHO 4090 Kerio
ECHO 4093 PxPlus Client server interface ProvideX
ECHO 4096 Ascom Timeplex Bridge Relay Element (BRE)
ECHO 4105 Shofar (ShofarNexus)
ECHO 4111 Xgrid[11]
ECHO 4116 Smartcard-TLS
ECHO 4123 Z-Wave Protocol[214]
ECHO 4125 Microsoft Remote Web Workplace administration
ECHO 4172 Teradici PCoIP
ECHO 4190 ManageSieve[215]
ECHO 4195 AWS protocol for cloud remoting solution
ECHO 4197 Harman International's HControl protocol for control and monitoring of Audio, Video, Lighting and Control equipment
ECHO 4198 Couch Potato Android app[216]
ECHO 4200 Angular app
ECHO 4201 TinyMUD and various derivatives
ECHO 4222 NATS server default port[217]
ECHO 4226 Aleph One, a computer game
ECHO 4242 Orthanc  U/I  DICOM server[218] Quassel distributed IRC client
ECHO 4243 Docker implementations, redistributions, and setups default[219][needs update?] CrashPlan
ECHO 4244 Viber[220]
ECHO 4303 Simple Railroad Command Protocol (SRCP)
ECHO 4307 TrueConf Client  U/I  TrueConf Server media data exchange[221]
ECHO 4321 Referral Whois (RWhois) Protocol[222]
ECHO 4433 SaltoSystems - DTLS Based Communication for NCoder
ECHO 4444 Oracle WebCenter Content: Content Server—Intradoc Socket port.
ECHO      (formerly known as Oracle Universal Content Management).
ECHO      Metasploit's default listener port[223] Xvfb X server virtual frame buffer service OpenOCD (Telnet)[197]
ECHO 4444 U/I 4445 I2P HTTP/S proxy
ECHO 4455 OBS Studio built-in WebSocket plugin default port
ECHO 4486 Integrated Client Message Service (ICMS)
ECHO 4488 Apple Wide Area Connectivity Service, used by Back to My Mac[11]
ECHO 4500 IPSec NAT Traversal[11] (RFC 3947, RFC 4306)
ECHO 4502 U/I 4534 Microsoft Silverlight connectable ports under non-elevated trust
ECHO 4505 U/I 4506 Salt master
ECHO 4534 Armagetron Advanced server default
ECHO 4560 default Log4j socketappender port
ECHO 4567 Sinatra default server port in development mode (HTTP)
ECHO 4569 Inter-Asterisk eXchange (IAX2)
ECHO 4604 Identity Registration Protocol
ECHO 4605 Direct End to End Secure Chat Protocol
ECHO 4610 U/I 4640 QualiSystems TestShell Suite Services
ECHO 4662 OrbitNet Message Service Default for older versions of eMule[224]
ECHO 4664 Google Desktop Search
ECHO 4672 Default for older versions of eMule[224]
ECHO 4711 eMule optional web interface[224]
ECHO 4713 PulseAudio sound server
ECHO 4723 Appium open source automation tool
ECHO 4724 Default bootstrap port to use on device to talk to Appium
ECHO 4728 Computer Associates Desktop and Server Management (DMP)/Port Multiplexer[225]
ECHO 4730 Gearman's job server
ECHO 4739 IP Flow Information Export
ECHO 4747 Apprentice
ECHO 4753 SIMON (service and discovery)
ECHO 4789 Virtual eXtensible Local Area Network (VXLAN)
ECHO 4791 IP Routable RocE (RoCEv2)
ECHO 4840 OPC UA Connection Protocol (TCP) and OPC UA Multicast Datagram Protocol (UDP) for OPC Unified Architecture from OPC Foundation
ECHO 4843 OPC UA TCP Protocol over TLS/SSL for OPC Unified Architecture from OPC Foundation
ECHO 4847 Web Fresh Communication, Quadrion Software & Odorless Entertainment
ECHO 4848 Java GlassFish Application Server administration default
ECHO 4894 LysKOM Protocol A[226]
ECHO 4944 DrayTek DSL Status Monitoring[227]
ECHO 4949 Munin Resource Monitoring Tool
ECHO 4950 Cylon Controls UC32 Communications Port
ECHO 5000 UPnP—Windows network device interoperability VTun,
ECHO      VPN Software ASP.NET Core — Development Webserver FlightGear multiplayer[228] Synology Inc.
ECHO      Management Console, File Station, Audio Station Flask Development Webserver Heroku console access Docker Registry[229]
ECHO      AT&T U-verse public, educational, and government access (PEG) streaming over HTTP[230]
ECHO      High-Speed SECS Message Services[citation needed] 3CX Phone System Management Console/Web Client (HTTP)
ECHO      RidgeRun GStreamer Daemon (GSTD) [231] Apple's AirPlay Receiver[232] AWS Elastic Beanstalk Proxy server[233]
ECHO 5000 U/I 5500 League of Legends, a multiplayer online battle arena video game[234]
ECHO 5001 Slingbox and Slingplayer Iperf (Tool for measuring TCP and UDP bandwidth performance) Synology Inc.
ECHO      Secured Management Console, File Station, Audio Station 3CX Phone System Management Console/Web Client (HTTPS)
ECHO 5002 ASSA ARX access control system[235]
ECHO 5003 FileMaker  U/I  name binding and transport[11]
ECHO 5004 Real-time Transport Protocol media data (RTP) (RFC 3551, RFC 4571)
ECHO 5005 Real-time Transport Protocol control protocol (RTCP) (RFC 3551, RFC 4571)
ECHO 5007 Palo Alto Networks  U/I  User-ID agent
ECHO 5010 Registered to: TelePath (the IBM FlowMark workflow-management system messaging platform)[236]
ECHO      The TCP port is now used for: IBM WebSphere MQ Workflow
ECHO 5011 TelePath (the IBM FlowMark workflow-management system messaging platform)[236]
ECHO 5022 MSSQL Server Replication and Database mirroring endpoints[237]
ECHO 5025 scpi-raw Standard Commands for Programmable Instruments
ECHO 5029 Sonic Robo Blast 2 and Sonic Robo Blast 2 Kart servers
ECHO 5031 AVM CAPI-over-TCP (ISDN over Ethernet tunneling)[citation needed]
ECHO 5037 Android ADB server
ECHO 5044 Standard port in Filebeats/Logstash implementation of Lumberjack protocol.
ECHO 5048 Texai Message Service
ECHO 5050 Yahoo Messenger
ECHO 5051 ita-agent Symantec Intruder Alert[238]
ECHO 5060 Session Initiation Protocol (SIP)[11]
ECHO 5061 [239] Session Initiation Protocol (SIP) over TLS
ECHO 5062 Localisation access
ECHO 5064 EPICS Channel Access server[240]
ECHO 5065 EPICS Channel Access repeater beacon[240]
ECHO 5070 Binary Floor Control Protocol (BFCP)[241]
ECHO 5080 NEC Phone System SV8100 and SV9100 MLC phones: default iSIP port
ECHO 5084 EPCglobal Low Level Reader Protocol (LLRP)
ECHO 5085 EPCglobal Low Level Reader Protocol (LLRP) over TLS
ECHO 5090 3CX Phone System 3CX Tunnel Protocol, 3CX App API, 3CX Session Border Controller
ECHO 5093 SafeNet, Inc Sentinel LM, Sentinel RMS, License Manager, client-to-server
ECHO 5099 SafeNet, Inc Sentinel LM, Sentinel RMS, License Manager, server-to-server
ECHO 5104 IBM Tivoli Framework NetCOOL/Impact[242] HTTP Service
ECHO 5121 Neverwinter Nights
ECHO 5150 ATMP Ascend Tunnel Management Protocol[243]
ECHO 5151 ESRI SDE Instance ESRI SDE Remote Start
ECHO 5154 BZFlag
ECHO 5172 PC over IP Endpoint Management[244]
ECHO 5173 Vite[245]
ECHO 5190 AOL Instant Messenger protocol.[11] The chat app is defunct as of 15 December 2017.[246]
ECHO 5198 EchoLink VoIP Amateur Radio Software (Voice)
ECHO 5199 EchoLink VoIP Amateur Radio Software (Voice)
ECHO 5200 EchoLink VoIP Amateur Radio Software (Information)
ECHO 5201 Iperf3 (Tool for measuring TCP and UDP bandwidth performance)
ECHO 5222 Extensible Messaging and Presence Protocol (XMPP) client connection[11][247][248]
ECHO 5223 Apple Push Notification Service[11][165] Extensible Messaging and Presence Protocol (XMPP) client connection over SSL
ECHO 5228 HP Virtual Room Service Google Play, Android Cloud to Device Messaging Service, Google Cloud Messaging
ECHO 5231 Remote Control of Scan Software for Cruse Scanners[249]
ECHO 5232 Cruse Scanning System Service[250] Silicon Graphics Distributed Graphics Library daemon (dgld)[251][252][253]
ECHO 5235 U/I 5236 Firebase Cloud Messaging[254]
ECHO 5242 Viber[220]
ECHO 5243 Viber[220]
ECHO 5246 Control And Provisioning of Wireless Access Points (CAPWAP) CAPWAP control[255]
ECHO 5247 Control And Provisioning of Wireless Access Points (CAPWAP) CAPWAP data[255]
ECHO 5269 Extensible Messaging and Presence Protocol (XMPP) server-to-server connection[11][247][248]
ECHO 5280 Extensible Messaging and Presence Protocol (XMPP)[256]
ECHO 5281 Extensible Messaging and Presence Protocol (XMPP)[257]
ECHO 5298 Extensible Messaging and Presence Protocol (XMPP)[258]
ECHO 5310 Outlaws, a 1997 first-person shooter video game[259]
ECHO 5318 Certificate Management over CMS[260]
ECHO 5349 STUN over TLS/DTLS, a protocol for NAT traversal[199] TURN over TLS/DTLS, a protocol for NAT traversal[200] STUN Behavior Discovery over TLS.[201] See also port 3478.
ECHO 5351 NAT Port Mapping Protocol and Port Control Protocol—client-requested configuration for connections through network address translators and firewalls
ECHO 5353 Multicast DNS (mDNS)[11]
ECHO 5355 Link-Local Multicast Name Resolution (LLMNR), allows hosts to perform name resolution for hosts on the same local link (only provided by Windows Vista and Server 2008)
ECHO 5357 Web Services for Devices (WSDAPI) (only provided by Windows Vista, Windows 7 and Server 2008)
ECHO 5358 WSDAPI Applications to Use a Secure Channel (only provided by Windows Vista, Windows 7 and Server 2008)
ECHO 5394 Kega Fusion, a Sega multi-console emulator[261][262]
ECHO 5402 Multicast File Transfer Protocol (MFTP)[263][importance?]
ECHO 5405 NetSupport Manager
ECHO 5412 IBM Rational Synergy (Telelogic Synergy) (Continuus CM) Message Router
ECHO 5413 Wonderware SuiteLink service
ECHO 5417 SNS Agent
ECHO 5421 NetSupport Manager
ECHO 5432 PostgreSQL[11] database system
ECHO 5433 Bouwsoft file/webserver[264]
ECHO 5445 Cisco Unified Video Advantage[citation needed]
ECHO 5450 OSIsoft PI Server Client Access [265]
ECHO 5457 OSIsoft PI Asset Framework Client Access [266]
ECHO 5458 OSIsoft PI Notifications Client Access [267]
ECHO 5480 VMware VAMI (Virtual Appliance Management Infrastructure)—used for initial setup of various administration settings on Virtual Appliances designed using the VAMI architecture.
ECHO 5481 Schneider Electric's ClearSCADA (SCADA implementation for Windows) — used for client-to-server communication.[268]
ECHO 5495 IBM Cognos TM1 Admin server
ECHO 5498 Hotline tracker server connection
ECHO 5499 Hotline tracker server discovery
ECHO 5500 Hotline control connection VNC Remote Frame Buffer RFB protocol—for incoming listening viewer
ECHO 5501 Hotline file transfer connection
ECHO 5517 Setiqueue Proxy server client for SETI@Home project
ECHO 5550 Hewlett-Packard Data Protector[citation needed]
ECHO 5554 Fastboot default wireless port
ECHO 5555 Oracle WebCenter Content: Inbound Refinery—Intradoc Socket port. (formerly known as Oracle Universal Content Management).
ECHO      Port though often changed during installation Freeciv versions up to 2.0,
ECHO      Hewlett-Packard Data Protector, McAfee EndPoint Encryption Database Server, SAP,
ECHO      Default for Microsoft Dynamics CRM 4.0,
ECHO      Softether VPN default port Wireless adb (Android Debug Bridge) control of an Android device over the network.
ECHO 5556 Freeciv, Oracle WebLogic Server Node Manager[269]
ECHO 5568 Session Data Transport (SDT), a part of Architecture for Control Networks (ACN)[270][full citation needed]
ECHO 5601 Kibana[271]
ECHO 5631 pcANYWHEREdata, Symantec pcAnywhere (version 7.52 and later[272])[273] data
ECHO 5632 pcANYWHEREstat, Symantec pcAnywhere (version 7.52 and later) status
ECHO 5656 IBM Lotus Sametime p2p file transfer
ECHO 5666 NRPE (Nagios)
ECHO 5667 NSCA (Nagios)
ECHO 5670 FILEMQ ZeroMQ File Message Queuing Protocol ZRE-DISC ZeroMQ Realtime Exchange Protocol (Discovery)
ECHO 5671 Advanced Message Queuing Protocol (AMQP)[274] over TLS
ECHO 5672 Advanced Message Queuing Protocol (AMQP)[274]
ECHO 5678 n8n[275] MikroTik Neighbor Discovery Protocol[276][277]
ECHO 5683 Constrained Application Protocol (CoAP)
ECHO 5684 Constrained Application Protocol Secure (CoAPs)
ECHO 5693 Nagios Cross Platform Agent (NCPA)[278]
ECHO 5701 Hazelcast default communication port[279]
ECHO 5718 Microsoft DPM Data Channel (with the agent coordinator)
ECHO 5719 Microsoft DPM Data Channel (with the protection agent)
ECHO 5722 Microsoft RPC, DFSR (SYSVOL) Replication Service[citation needed]
ECHO 5723 System Center Operations Manager[280]
ECHO 5724 Operations Manager Console
ECHO 5741 IDA Discover Port 1
ECHO 5742 IDA Discover Port 2
ECHO 5800 VNC Remote Frame Buffer RFB protocol over HTTP ProjectWise Server[281]
ECHO 5900 Remote Frame Buffer protocol (RFB) Virtual Network Computing (VNC) Remote Frame Buffer RFB protocol[11][282]
ECHO 5905 Windows service "C:\Program Files\Intel\Intel(R) Online Connect Access\IntelTechnologyAccessService.exe" that listens on 127.0.0.1
ECHO 5931 AMMYY admin Remote Control
ECHO 5938 TeamViewer remote desktop protocol[283]
ECHO 5984 CouchDB database server
ECHO 5985 Windows PowerShell Default psSession Port[284] Windows Remote Management Service (WinRM-HTTP)[285]
ECHO 5986 Windows PowerShell Default psSession Port[284] Windows Remote Management Service (WinRM-HTTPS)[285]
ECHO 5988 U/I 5989 CIM-XML (DMTF Protocol)[286]
ECHO 6000 U/I 6063 X11—used between an X client and server over the network
ECHO 6005 Default for BMC Software Control-M/Server—Socket used for communication between Control-M processes—though often changed during installation Default for Camfrog chat & cam client
ECHO 6009 JD Edwards EnterpriseOne ERP system JDENet messaging client listener
ECHO 6024-6025 Tigermeeting Android client discovery[287]
ECHO 6026 Tigermeeting client/server communication[287]
ECHO 6030-6031 Tigermeeting Admin user discovery[287]
ECHO 6050 Arcserve backup
ECHO 6051 Arcserve backup
ECHO 6081 Generic Network Virtualization Encapsulation (Geneve)[288]
ECHO 6086 Peer Distributed Transfer Protocol (PDTP), FTP like file server in a P2P network
ECHO 6100 Vizrt System Ventrilo authentication for version 3
ECHO 6101 Backup Exec Agent Browser[citation needed]
ECHO 6110 softcm, HP Softbench CM
ECHO 6111 spc, HP Softbench Sub-Process Control
ECHO 6112 dtspcd, execute commands and launch applications remotely Blizzard's Battle.net gaming service and some games,
ECHO      [130] ArenaNet gaming service, Relic gaming service Club Penguin Disney online game for kids
ECHO 6113 Club Penguin Disney online game for kids, Used by some Blizzard games[130]
ECHO 6136 ObjectDB database server[289]
ECHO 6159 ARINC 840 EFB Application Control Interface
ECHO 6160 Veeam Installer Service
ECHO 6161 Veeam vPower NFS Service
ECHO 6162 Veeam Data Mover
ECHO 6163 Veeam Hyper-V Integration Service
ECHO 6164 Veeam WAN Accelerator
ECHO 6165 Veeam WAN Accelerator Data Transfer
ECHO 6167 Veeam Log Shipping Service
ECHO 6170 Veeam Mount Server
ECHO 6200 Oracle WebCenter Content Portable: Content Server (With Native UI) and Inbound Refinery
ECHO 6201 Thermo-Calc Software AB: Management of service nodes in a processing grid for thermodynamic calculations Oracle WebCenter Content Portable: Admin
ECHO 6225 Oracle WebCenter Content Portable: Content Server Web UI
ECHO 6227 Oracle WebCenter Content Portable: JavaDB
ECHO 6240 Oracle WebCenter Content Portable: Capture
ECHO 6244 Oracle WebCenter Content Portable: Content Server—Intradoc Socket port
ECHO 6255 Oracle WebCenter Content Portable: Inbound Refinery—Intradoc Socket port
ECHO 6257 WinMX (see also 6699)
ECHO 6260 planet M.U.L.E.
ECHO 6262 Sybase Advantage Database Server
ECHO 6343 SFlow, sFlow traffic monitoring
ECHO 6346 gnutella-svc, gnutella (FrostWire, Limewire, Shareaza, etc.)
ECHO 6347 gnutella-rtr, Gnutella alternate
ECHO 6350 App Discovery and Access Protocol
ECHO 6379 Redis key-value data store
ECHO 6389 EMC CLARiiON
ECHO 6432 PgBouncer—A connection pooler for PostgreSQL
ECHO 6436 Leap Motion Websocket Server TLS
ECHO 6437 Leap Motion Websocket Server
ECHO 6443 Kubernetes API server [290]
ECHO 6444 Sun Grid Engine Qmaster Service
ECHO 6445 Sun Grid Engine Execution Service
ECHO 6454 Art-Net protocol
ECHO 6463 U/I 6472 Discord RPC[291]
ECHO 6464 Port assignment for medical device communication in accordance to IEEE 11073-20701
ECHO 6513 NETCONF over TLS
ECHO 6514 Syslog over TLS[292]
ECHO 6515 Elipse RPC Protocol (REC)
ECHO 6516 Windows Admin Center
ECHO 6543 Pylons project#Pyramid Default Pylons Pyramid web service port
ECHO 6556 Check MK Agent
ECHO 6566 SANE (Scanner Access Now Easy)—SANE network scanner daemon[293]
ECHO 6560 U/I 6561 Speech-Dispatcher daemon[citation needed]
ECHO 6571 Windows Live FolderShare client
ECHO 6600 Microsoft Hyper-V Live Music Player Daemon (MPD)
ECHO 6601 Microsoft Forefront Threat Management Gateway
ECHO 6602 Microsoft Windows WSS Communication
ECHO 6619 odette-ftps, Odette File Transfer Protocol (OFTP) over TLS/SSL
ECHO 6622 Multicast FTP
ECHO 6626 Semaphore Messenger
ECHO 6653 OpenFlow[294]
ECHO 6660 U/I 6664 Internet Relay Chat (IRC)
ECHO 6665 U/I 6669 Internet Relay Chat (IRC)
ECHO 6679 Osorno Automation Protocol (OSAUT) Internet Relay Chat (IRC) SSL (Secure Internet Relay Chat)—often used
ECHO 6690 Synology Cloud station
ECHO 6697 IRC SSL (Secure Internet Relay Chat)—often used
ECHO 6699 WinMX (see also 6257)
ECHO 6715 AberMUD and derivatives default port
ECHO 6771 BitTorrent Local Peer Discovery
ECHO 6783 U/I 6785 Splashtop Remote server broadcast
ECHO 6801 ACNET Control System Protocol
ECHO 6881 U/I 6887 BitTorrent beginning of range of ports used most often
ECHO 6888 MUSE BitTorrent continuation of range of ports used most often
ECHO 6889 U/I 6890 BitTorrent continuation of range of ports used most often
ECHO 6891 U/I 6900 BitTorrent continuation of range of ports used most often
ECHO 6891 U/I 6900 Windows Live Messenger (File transfer)
ECHO 6901 Windows Live Messenger (Voice) BitTorrent continuation of range of ports used most often
ECHO 6902 U/I 6968 BitTorrent continuation of range of ports used most often
ECHO 6924 split-ping, ping with RX/TX latency/loss split
ECHO 6935 EthoScan Service
ECHO 6936 XenSource Management Service
ECHO 6969 acmsoda BitTorrent tracker
ECHO 6970 U/I 6999 BitTorrent end of range of ports used most often QuickTime Streaming Server[11]
ECHO 6980 Voicemeeter VBAN network audio protocol[295]
ECHO 7000 Default for Vuze's built-in HTTPS Bittorrent tracker Avira Server Management Console
ECHO 7001 Avira Server Management Console Default for BEA WebLogic Server's HTTP server, though often changed during installation
ECHO 7002 Default for BEA WebLogic Server's HTTPS server, though often changed during installation
ECHO 7005 Default for BMC Software Control-M/Server and Control-M/Agent for Agent-to-Server, though often changed during installation
ECHO 7006 Default for BMC Software Control-M/Server and Control-M/Agent for Server-to-Agent, though often changed during installation
ECHO 7010 Default for Cisco AON AMC (AON Management Console)[296]
ECHO 7022 MSSQL Server Replication and Database mirroring endpoints[237]
ECHO 7023 Bryan Wilcutt T2-NMCS Protocol for SatCom Modems
ECHO 7025 Zimbra LMTP [mailbox]—local mail delivery
ECHO 7047 Zimbra conversion server
ECHO 7070 Real Time Streaming Protocol (RTSP), used by QuickTime Streaming Server. TCP is used by default, UDP is used as an alternate.[11]
ECHO 7077 Development-Network Authentification-Protocol
ECHO 7133 Enemy Territory: Quake Wars
ECHO 7144 Peercast[citation needed]
ECHO 7145 Peercast[citation needed]
ECHO 7171 Tibia
ECHO 7262 CNAP (Calypso Network Access Protocol)
ECHO 7272 WatchMe  U/I  WatchMe Monitoring
ECHO 7306 Zimbra mysql [mailbox][citation needed]
ECHO 7307 Zimbra mysql [logger][citation needed]
ECHO 7312 Sibelius License Server
ECHO 7396 Web control interface for Folding@home v7.3.6 and later[297]
ECHO 7400 RTPS (Real Time Publish Subscribe) DDS Discovery
ECHO 7401 RTPS (Real Time Publish Subscribe) DDS User-Traffic
ECHO 7402 RTPS (Real Time Publish Subscribe) DDS Meta-Traffic
ECHO 7471 Stateless Transport Tunneling (STT)
ECHO 7473 Rise: The Vieneo Province
ECHO 7474 Neo4J Server webadmin[298]
ECHO 7478 Default port used by Open iT Server.[299]
ECHO 7542 Saratoga file transfer protocol[300][301]
ECHO 7547 CPE WAN Management Protocol (CWMP) Technical Report 069
ECHO 7575 Populous: The Beginning server
ECHO 7624 Instrument Neutral Distributed Interface
ECHO 7631 ERLPhase
ECHO 7634 hddtemp—Utility to monitor hard drive temperature
ECHO 7652 U/I 7654 I2P anonymizing overlay network
ECHO 7655 I2P SAM Bridge Socket API
ECHO 7656 U/I 7660 I2P anonymizing overlay network
ECHO 7659 Polypheny User Interface (database system)
ECHO 7670 BrettspielWelt BSW Boardgame Portal
ECHO 7680 Delivery Optimization for Windows 10[302]
ECHO 7687 Bolt database connection
ECHO 7707 U/I 7708 Killing Floor
ECHO 7717 Killing Floor
ECHO 7777 iChat server file transfer proxy[11]
ECHO      Oracle Cluster File System 2[citation needed]
ECHO      Windows backdoor program tini.exe default[citation needed]
ECHO      Just Cause 2: Multiplayer Mod Server[citation needed]
ECHO      Terraria default server Super Foosball multiplayer gameplay port
ECHO      San Andreas Multiplayer (SA-MP)
ECHO      default port server SCP: Secret Laboratory Multiplayer Server
ECHO 7777 U/I 7788 Steam common default game server ports (Ark, L4D2, etc.)[citation needed]
ECHO 7777 U/I 7788 Unreal Tournament series default server[citation needed]
ECHO 7831 Default used by Smartlaunch Internet Cafe Administration[303] software
ECHO 7880 PowerSchool Gradebook Server[citation needed]
ECHO 7890 Default that will be used by the iControl Internet Cafe Suite Administration software
ECHO 7915 Default for YSFlight server[304]
ECHO 7935 Fixed port used for Adobe Flash Debug Player to communicate with a debugger (Flash IDE, Flex Builder or fdb).[305]
ECHO 7946 Docker Swarm communication among nodes[172]
ECHO 7979 Used by SilverBluff Studios for communication between servers and clients.[citation needed]
ECHO 7990 Atlassian Bitbucket (default port)[citation needed]
ECHO 8000 Commonly used for Internet radio streams such as SHOUTcast[citation needed],
ECHO      Icecast[306] and iTunes Radio[11] DynamoDB Local[307] Django Development Webserver[308] Python 3 http.server[309]
ECHO 8005 Tomcat remote shutdown[11] PLATO ASCII protocol (RFC 600) Windows SCCM HTTP listener service[310]
ECHO 8006 Quest AppAssure 5 API[311] Proxmox Virtual Environment admin web interface[312]
ECHO 8007 Quest AppAssure 5 Engine[311]
ECHO 8007 Proxmox Backup Server admin web interface
ECHO 8008 Alternative port for HTTP. See also ports 80 and 8080.
ECHO      IBM HTTP Server administration default[importance?] iCal, a calendar application by Apple[11]
ECHO      Matrix homeserver federation over HTTP[313]
ECHO 8009 Apache JServ Protocol (ajp13)[citation needed]
ECHO 8010 Buildbot web status page[citation needed]
ECHO 8042 Orthanc  U/I  REST API over HTTP[218]
ECHO 8061 Nikatron Device Protocol (nikatron-dev)
ECHO 8069 OpenERP 5.0 XML-RPC protocol[314]
ECHO 8070 OpenERP 5.0 NET-RPC protocol[314]
ECHO 8074 Gadu-Gadu
ECHO 8075 Killing Floor web administration interface[citation needed]
ECHO 8080 Alternative port for HTTP. See also ports 80 and 8008. Apache Tomcat[315] Atlassian JIRA applications[316]
ECHO 8081 Sun Proxy Admin Service[317]
ECHO 8088 Asterisk management access via HTTP[citation needed] YARN ResourceManager Web UI[318]
ECHO 8089 Splunk daemon management[319] FritzBox automatic TR-069 configuration[320]
ECHO 8090 Atlassian Confluence[321] Coral Content Distribution Network (legacy; 80 and 8080 now supported)[322] Matrix identity server[citation needed]
ECHO 8091 CouchBase web administration[323]
ECHO 8092 CouchBase API[323]
ECHO 8096 Emby and Jellyfin HTTP port[324]
ECHO 8100 SaltoSystems - Pro Access Space Service BlueMap, a 3D Minecraft web viewer and mapping tool
ECHO 8102 SaltoSystems - Used for LocalIO-Bridge for USB-Devices
ECHO 8111 JOSM Remote Control
ECHO 8112 PAC Pacifica Coin
ECHO 8116 Check Point Cluster Control Protocol
ECHO 8118 Privoxy—advertisement-filtering Web proxy
ECHO 8123 Polipo Web proxy Home Assistant Home automation BURST P2P[325] Minecraft Dynmap plugin/mod
ECHO 8124 Standard BURST Mining Pool Software Port
ECHO 8125 BURST Web Interface
ECHO 8139 Puppet (software) Client agent
ECHO 8140 Puppet (software) Master server
ECHO 8172 Microsoft Remote Administration for IIS Manager[326]
ECHO 8184 NCSA Brown Dog Data Access Proxy
ECHO 8194 U/I 8195 Bloomberg Terminal[327]
ECHO 8200 GoToMyPC MiniDLNA media server Web Interface Elastic APM Server
ECHO 8222 VMware VI Web Access via HTTP[328]
ECHO 8236 jRCS listener for Rocket Software jBASE Remote Connectivity Server[329]
ECHO 8243 HTTPS listener for Apache Synapse[330]
ECHO 8245 Dynamic DNS for at least -IP and DynDNS[331]
ECHO 8280 HTTP listener for Apache Synapse[330]
ECHO 8281 HTTP Listener for Gatecraft Plugin
ECHO 8291 Winbox—Default on a MikroTik RouterOS for a Windows application used to administer MikroTik RouterOS[332]
ECHO 8303 Teeworlds Server
ECHO 8332 Bitcoin JSON-RPC server[333]
ECHO 8333 Bitcoin[334] VMware VI Web Access via HTTPS[328]
ECHO 8334 Filestash server (default) [335]
ECHO 8337 VisualSVN Distributed File System Service (VDFS)[336]
ECHO 8384 Syncthing web GUI
ECHO 8388 Shadowsocks proxy server[citation needed]
ECHO 8400 Commvault Communications Service[337] (GxCVD, found in all client computers)
ECHO 8401 Commvault Server Event Manager (GxEvMgrS, available in CommServe)
ECHO 8403 Commvault Firewall (GxFWD, tunnel port for HTTP/HTTPS)
ECHO 8443 SW Soft Plesk Control Panel Apache Tomcat SSL Promise WebPAM SSL iCal over SSL[11] MineOs WebUi
ECHO 8444 Bitmessage Chia[338]
ECHO 8448 Matrix homeserver federation over HTTPS[313]
ECHO 8484 MapleStory Login Server
ECHO 8500 Adobe ColdFusion built-in web server[339]
ECHO 8501 Streamlit Open-source Python framework for machine learning and data science
ECHO 8530 Windows Server Update Services over HTTP, when using the default role installation settings in Windows Server 2012 and later versions.[340][341]
ECHO 8531 Windows Server Update Services over HTTPS, when using the default role installation settings in Windows Server 2012 and later versions.[340][341]
ECHO 8555 Symantec DLP OCR Engine [342] Chia JSON-RPC server[343]
ECHO 8580 Freegate, an Internet anonymizer and proxy tool[344]
ECHO 8601 Wavestore VMS protocol [345]
ECHO 8611 U/I 8614 Canon BubbleJet Network Protocol [346]
ECHO 8629 Tibero database[citation needed]
ECHO 8642 Lotus Notes Traveler auto synchronization for Windows Mobile and Nokia devices[347]
ECHO 8691 Ultra Fractal, a fractal generation and rendering software application  U/I  distributed calculations over networked computers[348][349]
ECHO 8765 Default port of a local GUN relay peer that the Internet Archive[350] and others use as a decentralized mirror for censorship resistance.[351]
ECHO 8767 Voice channel of TeamSpeak 2,[352] a proprietary Voice over IP protocol targeted at gamers[citation needed]
ECHO 8834 Nessus, a vulnerability scanner  U/I  remote XML-RPC web server[353][third-party source needed]
ECHO 8840 Opera Unite, an extensible framework for web applications[354][355]
ECHO 8880 Alternate port of CDDB (Compact Disc Database) protocol,
ECHO      used to look up audio CD (compact disc) information over the Internet.[356]
ECHO      See also port 888. IBM WebSphere Application Server SOAP connector[357][jargon]
ECHO 8883 Secure MQTT (MQTT over TLS)[358][359]
ECHO 8887 HyperVM over HTTP[citation needed]
ECHO 8888 HyperVM over HTTPS[citation needed] Freenet web UI (localhost only)
ECHO      Default for IPython[360] / Jupyter[361] notebook dashboards MAMP[362]
ECHO 8889 MAMP[362]
ECHO 8920 Jellyfin HTTPS port[324]
ECHO 8983 Apache Solr[363]
ECHO 8997 Alternate port for I2P Monotone Proxy[184][jargon]
ECHO 8998 I2P Monotone Proxy[184][jargon]
ECHO 8999 Alternate port for I2P Monotone Proxy[184][jargon]
ECHO 9000 SonarQube Web Server[364]
ECHO      ClickHouse default port DBGp SqueezeCenter web server & streaming UDPCast Play Framework web server[365]
ECHO      Hadoop NameNode default port PHP-FPM default port QBittorrent's embedded torrent tracker default port[366]
ECHO      Emidate
ECHO 9001 ETL Service Manager[367]
ECHO      Microsoft SharePoint authoring environment cisco-xremote router configuration[citation needed] Tor network default (ORPort) DBGp Proxy HSQLDB default port Emidate
ECHO 9002 Newforma Server comms Emidate
ECHO 9003 Xdebug default client port[368]
ECHO 9006 Tomcat in standalone mode[11]
ECHO 9008 Zerto VRA encrypted communications listener
ECHO 9030 Tor network default (DirPort)
ECHO 9042 Apache Cassandra native protocol clients
ECHO 9043 WebSphere Application Server Administration Console secure
ECHO 9050 U/I 9051 Tor (SOCKS-5 proxy)
ECHO 9060 WebSphere Application Server Administration Console
ECHO 9080 glrpc, Groove Collaboration software GLRPC WebSphere Application Server HTTP Transport (port 1)
ECHO      default Remote Potato by FatAttitude, Windows Media Center addon ServerWMC, Windows Media Center addon
ECHO 9081 Zerto ZVM to ZVM communication
ECHO 9090 Prometheus metrics server Openfire Administration Console SqueezeCenter control (CLI) Cherokee Admin Panel
ECHO 9091 Openfire Administration Console (SSL Secured) Transmission (BitTorrent client) Web Interface
ECHO 9092 H2 (DBMS) Database Server Apache Kafka A Distributed Streaming Platform[369]
ECHO 9100 PDL Data Stream, used for printing to certain network printers[11]
ECHO 9101 Bacula Director
ECHO 9102 Bacula File Daemon
ECHO 9103 Bacula Storage Daemon
ECHO 9116 SNMP-exporter (Prometheus)[370]
ECHO 9119 MXit Instant Messenger
ECHO 9150 Tor Browser
ECHO 9191 Sierra Wireless Airlink
ECHO 9199 Avtex LLC—qStats
ECHO 9200 Elasticsearch[371]—default Elasticsearch port
ECHO 9217 iPass Platform Service
ECHO 9229 NodeJS debugging default port (localhost)[372]
ECHO 9293 Sony PlayStation RemotePlay[373]
ECHO 9295 Sony PlayStation Remote Play Session creation communication port
ECHO 9296 Sony PlayStation Remote Play
ECHO 9297 Sony PlayStation Remote Play Video stream
ECHO 9300 IBM Cognos BI[374]
ECHO 9303 D-Link Shareport Share storage and MFP printers[citation needed]
ECHO 9306 Sphinx Native API
ECHO 9309 Sony PlayStation Vita Host Collaboration WiFi Data Transfer[375]
ECHO 9312 Sphinx SphinxQL
ECHO 9332 Litecoin JSON-RPC server
ECHO 9333 Litecoin
ECHO 9339 Used by all Supercell games such as Brawl Stars and Clash of Clans, mobile freemium strategy video games
ECHO 9389 adws, Microsoft AD DS Web Services, Powershell uses this port
ECHO 9392 OpenVAS Greenbone Security Assistant web interface
ECHO 9418 git, Git pack transfer service
ECHO 9419 MooseFS distributed file system  U/I  master control port[376]
ECHO 9420 MooseFS distributed file system  U/I  master command port[376]
ECHO 9421 MooseFS distributed file system  U/I  master client port[376]
ECHO 9422 MooseFS distributed file system  U/I  Chunkservers[376]
ECHO 9425 MooseFS distributed file system  U/I  CGI server[376]
ECHO 9443 VMware Websense Triton console (HTTPS port used for accessing and administrating a vCenter Server via the Web Management Interface) NCSA Brown Dog Data Tilling Service
ECHO 9535 mngsuite, LANDesk Management Suite Remote Control
ECHO 9536 laes-bf, IP Fabrics Surveillance buffering function
ECHO 9600 Factory Interface Network Service (FINS), a network protocol used by Omron programmable logic controllers[citation needed]
ECHO 9669 VGG Image Search Engine VISE[377]
ECHO 9675 Spiceworks Desktop, IT Helpdesk Software
ECHO 9676 Spiceworks Desktop, IT Helpdesk Software
ECHO 9695 Content centric networking (CCN, CCNx)[citation needed]
ECHO 9735 Bitcoin Lightning Network[378]
ECHO 9785 Viber[220]
ECHO 9800 WebDAV Source WebCT e-learning portal
ECHO 9875 Club Penguin Disney online game for kids
ECHO 9876 V Rising Dedicated server[379] 9877 V Rising Dedicated server[379] 9898 Tripwire—File Integrity Monitoring Software[380]
ECHO 9899 SCTP tunneling (port number used in SCTP packets encapsulated in UDP, RFC 6951)
ECHO 9901 Banana for Apache Solr
ECHO 9981 Tvheadend HTTP server (web interface)[381]
ECHO 9982 Tvheadend HTSP server (Streaming protocol)[381]
ECHO 9987 TeamSpeak 3 server default (voice) port (for the conflicting service see the IANA list)[382]
ECHO 9993 ZeroTier Default port for ZeroTier
ECHO 9997 Splunk port for communication between the forwarders and indexers
ECHO 9999 Urchin Web Analytics[citation needed] Dash (cryptocurrency)[383]
ECHO 10000 Network Data Management Protocol (NDMP) Control stream for network backup and restore. BackupExec Webmin, Web-based Unix/Linux system administration tool (default port)
ECHO 10000 U/I 20000 Used on VoIP networks for receiving and transmitting voice telephony traffic
ECHO       which includes Google Voice via the OBiTalk ATA devices
ECHO       as well as on the MagicJack and Vonage ATA network devices.[384]
ECHO 10001 Ubiquiti UniFi access points broadcast to 255.255.255.255:10001 (UDP) to locate the controller(s)
ECHO 10009 Crossfire, a multiplayer online First Person Shooter[citation needed]
ECHO 10011 TeamSpeak 3 ServerQuery[382]
ECHO 10022 TeamSpeak 3 ServerQuery over SSH
ECHO 10024 Zimbra smtp [mta]—to amavis from postfix[citation needed]
ECHO 10025 Zimbra smtp [mta]—back to postfix from amavis[citation needed]
ECHO 10042 Mathoid server [385]
ECHO 10050 Zabbix agent
ECHO 10051 Zabbix trapper
ECHO 10110 NMEA 0183 Navigational Data. Transport of NMEA 0183 sentences over TCP or UDP
ECHO 10172 Intuit Quickbooks client
ECHO 10200 FRISK Software International's fpscand virus scanning daemon for Unix platforms[386] FRISK Software International's f-protd virus scanning daemon for Unix platforms[387]
ECHO 10201 U/I 10204 FRISK Software International's f-protd virus scanning daemon for Unix platforms[387]
ECHO 10212 GE Intelligent Platforms Proficy HMI/SCADA  U/I  CIMPLICITY WebView[388]
ECHO 10308 Digital Combat Simulator Dedicated Server [389]
ECHO 10346 TEKWorx Limited  U/I  interfaceIT board protocol
ECHO 10468 Flyer  U/I  discovery protocol[citation needed]
ECHO 10480 SWAT 4 Dedicated Server[citation needed]
ECHO 10505 BlueStacks (android simulator) broadcast[390]
ECHO 10514 TLS-enabled Rsyslog (default by convention)
ECHO 10578 Skyrim Together multiplayer server for The Elder Scrolls V: Skyrim mod.
ECHO 10800 Touhou fight games (Immaterial and Missing Power, Scarlet Weather Rhapsody, Hisoutensoku, Hopeless Masquerade and Urban Legend in Limbo)
ECHO 10801 Bag With Friends multiplayer server for the Peaks of Yore mod.
ECHO 10823 Farming Simulator 2011[citation needed]
ECHO 10891 Jungle Disk (this port is opened by the Jungle Disk Monitor service on the localhost)[citation needed]
ECHO 10933 Octopus Deploy Tentacle deployment agent[391]
ECHO 11100 Risk of Rain multiplayer server
ECHO 11111 RiCcI, Remote Configuration Interface (Redhat Linux)
ECHO 11112 ACR/NEMA Digital Imaging and Communications in Medicine (DICOM)
ECHO 11211 memcached[11]
ECHO 11214 memcached incoming SSL proxy
ECHO 11215 memcached internal outgoing SSL proxy
ECHO 11235 XCOMPUTE numerical systems messaging (Xplicit Computing)[392]
ECHO 11311 Robot Operating System master
ECHO 11371 OpenPGP HTTP key server
ECHO 11753 OpenRCT2 multiplayer[393]
ECHO 12000 CubeForm, Multiplayer SandBox Game
ECHO 12012 Audition Online Dance Battle, Korea Server—Status/Version Check
ECHO 12013 Audition Online Dance Battle, Korea Server
ECHO 12035 Second Life, used for server UDP in-bound[394]
ECHO 12043 Second Life, used for LSL HTTPS in-bound[395]
ECHO 12046 Second Life, used for LSL HTTP in-bound[395]
ECHO 12201 Graylog Extended Log Format (GELF)[396][importance?]
ECHO 12222 Light Weight Access Point Protocol (LWAPP) LWAPP data (RFC 5412)
ECHO 12223 Light Weight Access Point Protocol (LWAPP) LWAPP control (RFC 5412)
ECHO 12307 Makerbot UDP Broadcast (client to printer) (JSON-RPC)[397]
ECHO 12308 Makerbot UDP Broadcast (printer to client) (JSON-RPC)[397]
ECHO 12345 Cube World[398] Little Fighter 2 NetBus remote administration tool (often Trojan horse).
ECHO 12443 IBM HMC web browser management access over HTTPS instead of default port 443[399]
ECHO 12489 NSClient/NSClient++/NC_Net (Nagios)
ECHO 12975 LogMeIn Hamachi (VPN tunnel software; also port 32976)—used to connect to Mediation Server (bibi.hamachi.cc)
ECHO       ; will attempt to use SSL (TCP port 443) if both 12975 & 32976 fail to connect
ECHO 13000 U/I 13050 Second Life, used for server UDP in-bound[400]
ECHO 13008 Crossfire, a multiplayer online First Person Shooter[citation needed]
ECHO 13075 Default[401] for BMC Software Control-M/Enterprise Manager Corba communication, though often changed during installation
ECHO 13400 ISO 13400 Road vehicles — Diagnostic communication over Internet Protocol (DoIP)
ECHO 13720 Symantec NetBackup—bprd (formerly VERITAS)
ECHO 13721 Symantec NetBackup—bpdbm (formerly VERITAS)
ECHO 13724 Symantec Network Utility—vnetd (formerly VERITAS)
ECHO 13782 Symantec NetBackup—bpcd (formerly VERITAS)
ECHO 13783 Symantec VOPIED protocol (formerly VERITAS)
ECHO 13785 Symantec NetBackup Database—nbdb (formerly VERITAS)
ECHO 13786 Symantec nomdb (formerly VERITAS)
ECHO 14550 MAVLink Ground Station Port
ECHO 14567 Battlefield 1942 and mods
ECHO 14652 Repgen DoxBox reporting tool
ECHO 14800 Age of Wonders III p2p port[402]
ECHO 15000 psyBNC Wesnoth Kaspersky Network Agent[403] Teltonika networks remote management system (RMS)
ECHO 15009 Teltonika networks remote management system (RMS)
ECHO 15010 Teltonika networks remote management system (RMS)
ECHO 15441 ZeroNet fileserver[citation needed]
ECHO 15567 Battlefield Vietnam and mods
ECHO 15345 XPilot Contact
ECHO 15672 RabbitMQ management plugin[404]
ECHO 16000 Oracle WebCenter Content: Imaging (formerly known as Oracle Universal Content Management). Port though often changed during installation shroudBNC
ECHO 16080 macOS Server Web (HTTP) service with performance cache[405]
ECHO 16200 Oracle WebCenter Content: Content Server (formerly known as Oracle Universal Content Management). Port though often changed during installation
ECHO 16225 Oracle WebCenter Content: Content Server Web UI. Port though often changed during installation
ECHO 16250 Oracle WebCenter Content: Inbound Refinery (formerly known as Oracle Universal Content Management). Port though often changed during installation
ECHO 16261 Project Zomboid multiplayer. Additional sequential ports used for each player connecting to server.[citation needed]
ECHO 16300 Oracle WebCenter Content: Records Management (formerly known as Oracle Universal Records Management). Port though often changed during installation
ECHO 16379 Redis Cluster bus[406]
ECHO 16384 CISCO Default RTP MIN
ECHO 16384 U/I 16403 Real-time Transport Protocol (RTP), RTP Control Protocol (RTCP), used by Apple's iChat for audio and video[11]
ECHO 16384 U/I 16387 Real-time Transport Protocol (RTP), RTP Control Protocol (RTCP), used by Apple's FaceTime and Game Center[11]
ECHO 16393 U/I 16402 Real-time Transport Protocol (RTP), RTP Control Protocol (RTCP), used by Apple's FaceTime and Game Center[11]
ECHO 16403 U/I 16472 Real-time Transport Protocol (RTP), RTP Control Protocol (RTCP), used by Apple's Game Center[11]
ECHO 16400 Oracle WebCenter Content: Capture (formerly known as Oracle Document Capture). Port though often changed during installation
ECHO 16567 Battlefield 2 and mods
ECHO 17000 M17  U/I  Digital RF voice and data protocol with Internet (UDP) gateways (reflectors).[407]
ECHO 17011 Worms multiplayer
ECHO 17224 Train Realtime Data Protocol (TRDP) Process Data, network protocol used in train communication.[2][408]
ECHO 17225 Train Realtime Data Protocol (TRDP) Message Data, network protocol used in train communication.[2][409]
ECHO 17333 CS Server (CSMS), default binary protocol port
ECHO 17472 Tanium Communication Port
ECHO 17474 DMXControl 3 Network Discovery
ECHO 17475 DMXControl 3 Network Broker
ECHO 17500 Dropbox LanSync Protocol (db-lsp); used to synchronize file catalogs between Dropbox clients on a local network.
ECHO 18080 Monero P2P network communications[citation needed]
ECHO 18081 Monero incoming RPC calls[citation needed]
ECHO 18091 memcached Internal REST HTTPS for SSL
ECHO 18092 memcached Internal CAPI HTTPS for SSL
ECHO 18104 RAD PDF Service
ECHO 18200 Audition Online Dance Battle, AsiaSoft Thailand Server status/version check
ECHO 18201 Audition Online Dance Battle, AsiaSoft Thailand Server
ECHO 18206 Audition Online Dance Battle, AsiaSoft Thailand Server FAM database
ECHO 18300 Audition Online Dance Battle, AsiaSoft SEA Server status/version check
ECHO 18301 Audition Online Dance Battle, AsiaSoft SEA Server
ECHO 18306 Audition Online Dance Battle, AsiaSoft SEA Server FAM database
ECHO 18333 Bitcoin testnet[citation needed]
ECHO 18400 Audition Online Dance Battle, KAIZEN Brazil Server status/version check
ECHO 18401 Audition Online Dance Battle, KAIZEN Brazil Server
ECHO 18505 Audition Online Dance Battle R4p3 Server, Nexon Server status/version check
ECHO 18506 Audition Online Dance Battle, Nexon Server
ECHO 18605 X-BEAT status/version check
ECHO 18606 X-BEAT
ECHO 18676 YouView
ECHO 19000 Audition Online Dance Battle, G10/alaplaya Server status/version check JACK sound server
ECHO 19001 Audition Online Dance Battle, G10/alaplaya Server
ECHO 19132 Minecraft: Bedrock Edition multiplayer server[410]
ECHO 19133 Minecraft: Bedrock Edition IPv6 multiplayer server[410]
ECHO 19150 Gkrellm Server
ECHO 19226 Panda Software AdminSecure Communication Agent
ECHO 19294 Google Talk Voice and Video connections[411]
ECHO 19295 Google Talk Voice and Video connections[411]
ECHO 19302 Google Talk Voice and Video connections[411]
ECHO 19531 systemd-journal-gatewayd[412]
ECHO 19532 systemd-journal-remote[413]
ECHO 19788 Mesh Link Establishment protocol for IEEE 802.15.4 radio mesh networks[414]
ECHO 19812 4D database SQL Communication[415]
ECHO 19813 4D database Client Server Communication[415]
ECHO 19814 4D database DB4D Communication[415]
ECHO 19999 Distributed Network Protocol—Secure (DNP—Secure), a secure version of the protocol used in SCADA systems between communicating RTU's and IED's
ECHO 20000 Distributed Network Protocol (DNP),
ECHO       a protocol used in SCADA systems between communicating RTU's and IED's OpenWebNet,
ECHO       communications protocol used in Bticino products Usermin,
ECHO       Web-based Unix/Linux user administration tool (default port)
ECHO       Used on VoIP networks for receiving and transmitting voice telephony traffic which includes Google Voice via the OBiTalk ATA devices
ECHO       as well as on the MagicJack and Vonage ATA network devices.[384]
ECHO 20560 Killing Floor
ECHO 20580 Walljam device communications
ECHO 20581 Walljam device communications
ECHO 20595 0 A.D. Empires Ascendant
ECHO 20808 Ableton Link
ECHO 21025 Starbound Server (default), Starbound[416]
ECHO 21064 Default Ingres DBMS server
ECHO 22000 Syncthing (default)
ECHO 22136 FLIR Systems[417] Camera Resource Protocol
ECHO 22222 Davis Instruments, WeatherLink IP[418]
ECHO 22347 WibuKey, WIBU-SYSTEMS AG Copy protection
ECHO 22350 CodeMeter, WIBU-SYSTEMS AG Copy protection
ECHO 22351 CodeMeter-CmWAN, WIBU-SYSTEMS AG Copy protection
ECHO 23073 Soldat Dedicated Server
ECHO 23399 Skype default protocol
ECHO 23513 Duke Nukem 3D source ports
ECHO 24441 Pyzor spam detection network
ECHO 24444 NetBeans integrated development environment
ECHO 24465 Tonido Directory Server for Tonido[419] which is a Personal Web App and P2P platform
ECHO 24554 BINKP, Fidonet mail transfers over TCP/IP
ECHO 24800 Synergy: keyboard/mouse sharing software
ECHO 24842 StepMania: Online: Dance Dance Revolution Simulator
ECHO 25565 Minecraft (Java Edition) multiplayer server[420][421] Minecraft (Java Edition) multiplayer server query[422]
ECHO 25575 Minecraft (Java Edition) multiplayer server RCON[423]
ECHO 25734-25735 SOLIDWORKS SolidNetworkLicense Manager[424]
ECHO 25826 collectd default port[425]
ECHO 26000 id Software's Quake server EVE Online Xonotic, an open-source arena shooter
ECHO 26822 MSI MysticLight
ECHO 26900 U/I 26901 EVE Online
ECHO 26909 U/I 26911 Action Tanks Online
ECHO 27000 PowerBuilder SySAM license server
ECHO 27000 U/I 27006 id Software's QuakeWorld master server
ECHO 27000 U/I 27009 FlexNet Publisher's License server (from the range of default ports)
ECHO 27000 U/I 27015 Steam (game client traffic)[426]
ECHO 27015 GoldSrc and Source engine dedicated server port[426]
ECHO 27015 U/I 27018 Unturned, a survival game
ECHO 27015 U/I 27030 Steam (matchmaking and HLTV)[426] Steam (downloads)[426]
ECHO 27016 Magicka and Space Engineers server port
ECHO 27017 MongoDB daemon process (mongod) and routing service (mongos)[427]
ECHO 27031 U/I 27035 Steam (In-Home Streaming)[426]
ECHO 27036 Steam (In-Home Streaming)[426]
ECHO 27374 Sub7 default.
ECHO 27500 U/I 27900 id Software's QuakeWorld
ECHO 27888 Kaillera server
ECHO 27901 U/I 27910 id Software's Quake II master server
ECHO 27950 OpenArena outgoing
ECHO 27960 U/I 27969 Activision's Enemy Territory and id Software's Quake III Arena,
ECHO       Quake III and Quake Live and some ioquake3 derived games, such as Urban Terror (OpenArena incoming)
ECHO 28000 Siemens Digital Industries Software license server[2]
ECHO 28001 Starsiege: Tribes[citation needed]
ECHO 28015 Rust (video game)[428]
ECHO 28016 Rust (video game) RCON[429]
ECHO 28200 VoxelStorm game server
ECHO 28260 Palo Alto Networks' Panorama HA-1 backup unencrypted sync port.[26]
ECHO 28443 Palo Alto Networks' Panorama-to-managed devices software updates, PAN-OS 8.0 and later.[210]
ECHO 28769 Palo Alto Networks' Panorama HA unencrypted sync port.[26]
ECHO 28770 Palo Alto Networks' Panorama HA-1 backup sync port.[26]
ECHO 28770 U/I 28771 AssaultCube Reloaded, a video game based upon a modification of AssaultCube[citation needed]
ECHO 28785 U/I 28786 Cube 2: Sauerbraten[430]
ECHO 28852 Killing Floor[citation needed]
ECHO 28910 Nintendo Wi-Fi Connection[431]
ECHO 28960 Call of Duty; Call of Duty: United Offensive; Call of Duty 2; Call of Duty 4: Modern Warfare[citation needed] Call of Duty: World at War (PC platform)[432]
ECHO 29000 Siemens Digital Industries Software license server[2]
ECHO 29070 Jedi Knight: Jedi Academy by Ravensoft[citation needed]
ECHO 29900 U/I 29901 Nintendo Wi-Fi Connection[431]
ECHO 29920 Nintendo Wi-Fi Connection[431]
ECHO 30000 XLink Kai P2P Minetest server default port[433] Foundry Virtual Tabletop server default port[434]
ECHO 30003 Amicon FPSU-IP Remote Administration
ECHO 30004 Amicon FPSU-IP VPN
ECHO 30033 TeamSpeak 3 File Transfer[382]
ECHO 30120 Fivem (Default Port) GTA V multiplayer[435][421]
ECHO 30564 Multiplicity: keyboard/mouse/clipboard sharing software[citation needed]
ECHO 31337 Back Orifice and Back Orifice 2000 remote administration tools[436][437] ncat, a netcat alternative[438]
ECHO 31416 BOINC RPC[439]
ECHO 31438 Rocket U2[440]
ECHO 31457 TetriNET
ECHO 32137 Immunet Protect (UDP in version 2.0,[441] TCP since version 3.0[442])
ECHO 32400 Plex Media Server[443]
ECHO 32764 A backdoor found on certain Linksys, Netgear and other wireless DSL modems/combination routers[444]
ECHO 32887 Ace of Spades, a multiplayer FPS video game[citation needed]
ECHO 32976 LogMeIn Hamachi, a VPN application; also TCP port 12975 and SSL (TCP 443).[445]
ECHO 33434 traceroute
ECHO 33848 Jenkins, a continuous integration (CI) tool[446][447]
ECHO 34000 Infestation: Survivor Stories (formerly known as The War Z), a multiplayer zombie video game[verification needed]
ECHO 34197 Factorio, a multiplayer survival and factory-building game[448]
ECHO 35357 OpenStack Identity (Keystone) administration[449][self-published source?]
ECHO 36330 Folding@home Control Port
ECHO 37008 TZSP intrusion detection[citation needed]
ECHO 38412 NG Application Protocol (NGAP) for communication between a gNB and AMF in 5G core networks[450][451]
ECHO 40000 SafetyNET p  U/I  a real-time Industrial Ethernet protocol
ECHO 41121 Tentacle Server[452]  U/I  Pandora FMS
ECHO 41230 Z-Wave Protocol over DTLS[453]
ECHO 41794 Crestron Control Port[454]  U/I  Crestron Electronics
ECHO 41795 Crestron Terminal Port[455]  U/I  Crestron Electronics
ECHO 41796 Crestron Secure Control Port[456]  U/I  Crestron Electronics
ECHO 41797 Crestron Secure Terminal Port[457]  U/I  Crestron Electronics
ECHO 42081-42090 Zippin  U/I Zippin Store[458]
ECHO 42590-42595 Glue  U/I  MakePro X[459]
ECHO 42999 Curiosity [460]
ECHO 43110 ZeroNet web UI default port [461]
ECHO 43594 U/I 43595 RuneScape[462]
ECHO 44123 Z-Wave Secure Tunnel[463]
ECHO 44405 Mu Online Connect Server[citation needed]
ECHO 44818 EtherNet/IP explicit messaging
ECHO 47808 U/I 47823 BACnet Building Automation and Control Networks (4780810 = BAC016 to 4782310 = BACF16)
ECHO 48556 drive.web AC/DC Drive Automation and Control Networks [464]
ECHO 48656 Brainy LAB[465] Control Server
ECHO 48657 Brainy LAB[465] Control Server
ECHO 49151 "IANA "[2]
ECHO 9152 U/I 65535 Certificate Management over CMS[467] and Xsan Filesystem Access[468]
ECHO 49160 Palo Alto Networks' Panorama.[210]
ECHO 50160 S-CONNECT protocol - data exchange (TCP) and manual device pairing (UDP).[469]
ECHO 50161 S-CONNECT protocol - automatic device pairing.[469]
ECHO 51820 WireGuard protocol[470]
ECHO 60000 U/I 61000 Range from which Mosh  U/I  a remote-terminal application similar to SSH  U/I  typically assigns ports for ongoing sessions between Mosh servers and Mosh clients.[471]
ECHO 61616 ActiveMQ Classic [472]
ECHO 62078 Apple's lockdownd protocol  U/I  used for communicating with iPhones and iPads.[473]
ECHO 64738 Mumble[474]
ECHO.
ECHO [PORT]                            [Protocol]
echo.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:netmasks
ECHO [CIDR]  [NETMASK]       [WILDCARD]      [#ofIP] [#ofusableIP]
ECHO /32     255.255.255.255     0.0.0.0     1     1
ECHO /31     255.255.255.254     0.0.0.1     2     2*
ECHO /30     255.255.255.252     0.0.0.3     4     2
ECHO /29     255.255.255.248     0.0.0.7     8     6
ECHO /28     255.255.255.240     0.0.0.15     16     14
ECHO /27     255.255.255.224     0.0.0.31     32     30
ECHO /26     255.255.255.192     0.0.0.63     64     62
ECHO /25     255.255.255.128     0.0.0.127     128     126
ECHO /24     255.255.255.0     0.0.0.255     256     254
ECHO /23     255.255.254.0     0.0.1.255     512     510
ECHO /22     255.255.252.0     0.0.3.255     1,024     1,022
ECHO /21     255.255.248.0     0.0.7.255     2,048     2,046
ECHO /20     255.255.240.0     0.0.15.255     4,096     4,094
ECHO /19     255.255.224.0     0.0.31.255     8,192     8,190
ECHO /18     255.255.192.0     0.0.63.255     16,384     16,382
ECHO /17     255.255.128.0     0.0.127.255     32,768     32,766
ECHO /16     255.255.0.0     0.0.255.255     65,536     65,534
ECHO /15     255.254.0.0     0.1.255.255     131,072     131,070
ECHO /14     255.252.0.0     0.3.255.255     262,144     262,142
ECHO /13     255.248.0.0     0.7.255.255     524,288     524,286
ECHO /12     255.240.0.0     0.15.255.255     1,048,576     1,048,574
ECHO /11     255.224.0.0     0.31.255.255     2,097,152     2,097,150
ECHO /10     255.192.0.0     0.63.255.255     4,194,304     4,194,302
ECHO /9     255.128.0.0     0.127.255.255     8,388,608     8,388,606
ECHO /8     255.0.0.0     0.255.255.255     16,777,216     16,777,214
ECHO /7     254.0.0.0     1.255.255.255     33,554,432     33,554,430
ECHO /6     252.0.0.0     3.255.255.255     67,108,864     67,108,862
ECHO /5     248.0.0.0     7.255.255.255     134,217,728     134,217,726
ECHO /4     240.0.0.0     15.255.255.255     268,435,456     268,435,454
ECHO /3     224.0.0.0     31.255.255.255     536,870,912     536,870,910
ECHO /2     192.0.0.0     63.255.255.255     1,073,741,824     1,073,741,822
ECHO /1     128.0.0.0     127.255.255.255     2,147,483,648     2,147,483,646
ECHO /0     0.0.0.0     255.255.255.255     4,294,967,296     4,294,967,294
ECHO.
ECHO table of the decimal to binary conversions for subnet mask and wildcard octets below.
ECHO         [Subnet Mask]       [Wildcard]
ECHO 0       00000000     255    11111111
ECHO 128     10000000     127    01111111
ECHO 192     11000000     63     00111111
ECHO 224     11100000     31     00011111
ECHO 240     11110000     15     00001111
ECHO 248     11111000     7      00000111
ECHO 252     11111100     3      00000011
ECHO 254     11111110     1      00000001
ECHO 255     11111111     0      00000000
echo.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:hydras
ECHO [Hydra]
ECHO [INSTALL COMMAND: sudo apt install hydra-gtk ]
ECHO hydra -P password-file.txt -v $ip snmp                                             Hydra brute force against SNMP
ECHO hydra -t 1 -l admin -P /usr/share/wordlists/rockyou.txt -vV $ip ftp                Hydra FTP known user and rockyou password list
ECHO hydra -v -V -u -L users.txt -P passwords.txt -t 1 -u $ip ssh                       Hydra SSH using list of users and passwords
ECHO hydra -v -V -u -L users.txt -p "" -t 1 -u $ip ssh                      ---         Hydra SSH using a known password and a username list
ECHO hydra $ip -s 22 ssh -l -P big_wordlist.txt                                         Hydra SSH Against Known username on port 22
ECHO hydra -l USERNAME -P /usr/share/wordlistsnmap.lst -f $ip pop3 -V                   Hydra POP3 Brute Force
ECHO hydra -P /usr/share/wordlistsnmap.lst $ip smtp -V                     ---          Hydra SMTP Brute Force
ECHO hydra -L ./webapp.txt -P ./webapp.txt $ip http-get /admin                          Hydra attack http get 401 login with a dictionary
ECHO hydra -t 1 -V -f -l administrator -P /usr/share/wordlists/rockyou.txt rdp://$ip    Hydra attack Windows Remote Desktop with rockyou
ECHO hydra -t 1 -V -f -l administrator -P /usr/share/wordlists/rockyou.txt $ip smb      Hydra brute force SMB user with rockyou:
ECHO hydra -L usernames.txt -P passwords.txt $ip smb -V -f                              SMB Brute Forcing
ECHO hydra -L users.txt -P passwords.txt $ip ldap2 -V -f                                LDAP Brute Forcing
echo.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
:batchechos
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
setlocal enabledelayedexpansion
title BatchEcho v0.01
:startium
echo [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]
echo     ____  __       ______________  __        ______________  ______
echo    / __ )/  \     /_  __/ ____/ / / /       / ____/ ____/ / / / __ \
echo   / __  / /\ \     / / / /   / /_/ /       / ____/ /   / /_/ / / / /
echo  / /_/ / ___  \   / / / /___/ __  /       / /___/ /___/ __  / /_/ /
echo /_____/_/   \__\ /_/  \____/_/ /_/  [_]  /_____/\____/_/ /_/\____/ v0.01
echo.
echo A .txt file content to batch echo message converter.
echo [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]
echo By Levi Santegoets.                                  [ENTER "X" TO EXIT]
echo.
set /p wordlist="Enter the path to the message file e.g., [D:\Apollo\messagetoconvert.txt]:"
IF %wordlist%==X goto catspallin
:redefineinput
set /p defineoperation="Do you want to save its content to a .txt file? Y/N:"
IF %defineoperation%==N goto undefinedoperation
IF %defineoperation%==Y set /p filename="Enter a custom name for the output file (without extension and without path.):"
IF %defineoperation%==Y goto predefinedoperation
echo please input a valid paramitter.
goto redefineinput
:undefinedoperation
REM Read the entire content of the text file
for /f "usebackq delims=" %%a in ("%wordlist%") do (
  set pass=%%a
  echo ECHO !pass!
)
goto exit
:predefinedoperation
echo. > %~dp0%filename%.txt
REM Read the entire content of the text file
for /f "usebackq delims=" %%a in ("%wordlist%") do (
  set pass=%%a
  echo ECHO !pass! >> %~dp0%filename%.txt
)
goto exit
:exit
echo The conversion of the message has ended.
echo Make sure to copy the content of the terminal to a .txt file.
echo Ended execution at [DATE:%date% TIME:%time%]
pause
goto startium
:bettercaps
ECHO [BETTERCAP] commands  
ECHO [INSTALL: sudo apt install bettercap ]
ECHO [EVENTS]
ECHO Each module can generate an event with a custom payload and a unique identifier / tag depending on its meaning:
ECHO [event]                             [meaning]
ECHO sys.log                                Simple log message event.
ECHO session.started                        The session started.
ECHO session.closing                        The session is stopping.
ECHO update.available                       An update is available.
ECHO mod.started              ---           A specific module started.
ECHO mod.stopped                            A specific module stopped.
ECHO tick                                   An event generated by the ticker module.
ECHO gateway.change                         IPv4 or IPv6 gateway change detected.
ECHO endpoint.new                           A new network host has been discovered.
ECHO endpoint.lost                          A previously discovered network host disconnected from this network.
ECHO wifi.ap.new                            A new WiFi access point has been discovered.
ECHO wifi.ap.lost            ---            A previously discovered WiFi access point is not in range anymore.
ECHO wifi.client.new                        A new WiFi client station has been discovered.
ECHO wifi.client.lost                       A previously discovered WiFi client station disconnected from its AP.
ECHO wifi.client.probe                      A WiFi client station is sending a probe for an ESSID.
ECHO wifi.client.handshake                  WPA/WPA2 key material has been captured.
ECHO wifi.client.deauthentication           WPA/WPA2 deauthentication frame has been detected.
ECHO ble.device.new                         A new BLE device has been discovered.
ECHO ble.device.lost                        A previously discovered BLE device is not in range anymore.
ECHO ble.device.service.discovered          A new service has been discovered for a BLE device.
ECHO ble.device.characteristic.discovered   A new characteristic has been discovered for a BLE device.
ECHO ble.device.connected                   Connected to the selected BLE device.
ECHO ble.connection.timeout                 Connection to the specified BLE device timed out.
ECHO hid.device.new                         A new wireless HID device has been discovered.
ECHO hid.device.lost                        A previously discovered wireless HID device is not in range anymore.
ECHO http.spoofed-request                   A HTTP request has been changed by a proxy module.
ECHO http.spoofed-response                  A HTTP response has been changed by a proxy module.
ECHO https.spoofed-request                  A HTTPS request has been changed by a proxy module.
ECHO https.spoofed-response                 A HTTPS response has been changed by a proxy module.
ECHO syn.scan                    ---        An open port has been found on the target host.
ECHO net.sniff.*                            A new payload has been sniffed.
ECHO [COMMANDS]
ECHO [Example]                             [Description]
ECHO caplets.show                           Show a list of installed caplets.
ECHO caplets.paths                          Show a list caplet search paths.
ECHO caplets.update                         Install/updates the caplets.
ECHO [BLE] Bluetooth low energy
ECHO ble.recon on                           Start Bluetooth Low Energy devices discovery.
ECHO ble.recon off                          Stop Bluetooth Low Energy devices discovery.
ECHO ble.clear                              Clear all devices collected by the BLE discovery module.
ECHO ble.show                               Show discovered Bluetooth Low Energy devices.
ECHO ble.enum MAC                           Enumerate services and characteristics for the given BLE device.
ECHO ble.write MAC UUID HEX_DATA            Write the HEX_DATA buffer to the BLE device with the specified MAC address,
ECHO                                        to the characteristics with the given UUID.  
ECHO ble.device                             Index of the HCI device to use, -1 to autodetect.
ECHO ble.show.filter         ---            Defines a regular expression filter for ble.show.
ECHO ble.show.sort                          Defines sorting field (rssi, mac, or seen) and direction (asc or desc) for ble.show.
ECHO ble.show.limit                         If greater than zero, defines limit for ble.show.
ECHO [WiFi]
ECHO wifi.recon on                            Enable Wi-Fi reconnaissance to scan for nearby Wi-Fi networks.
ECHO wifi.recon off                           Disable Wi-Fi reconnaissance.
ECHO wifi.show             ---                Display a list of discovered Wi-Fi networks and clients.
ECHO wifi.show ap                             Show discovered access points (APs).
ECHO wifi.show client                         Show discovered Wi-Fi clients.
ECHO wifi.deauth MAC                          Deauthenticate a specific client by MAC address.
ECHO wifi.deauth all                          Deauthenticate all clients on all access points.
ECHO wifi.assoc  AP_MAC   CLIENT_MAC          Attempt to associate with a client to capture the WPA/WPA2 handshake.
ECHO wifi.handshake  AP_MAC                   Capture the WPA/WPA2 handshake from the target access point.
ECHO wifi.filter essid  ESSID_NAME            Filter Wi-Fi networks by ESSID (network name).
ECHO wifi.filter bssid  BSSID                 Filter Wi-Fi networks by BSSID (MAC address).
ECHO wifi.spoof.ap on               ---       Start beacon flooding with fake access points.
ECHO wifi.spoof.ap off                        Stop beacon flooding with fake access points.
ECHO wifi.spoof.ap custom  ESSID   BSSID      Spoof a specific ESSID and BSSID to create a fake AP.
ECHO wifi.interface  INTERFACE                Set the Wi-Fi interface to use for Wi-Fi attacks (e.g., wlan0).
ECHO wifi.recon.channel  CHANNEL              Set the specific Wi-Fi channel for scanning.
ECHO wifi.jammer on                           Enable Wi-Fi jamming to disrupt Wi-Fi communication.
ECHO wifi.jammer off                ---       Disable Wi-Fi jamming.
ECHO wifi.recon.save  FILENAME                Save the current Wi-Fi recon session to a file.
ECHO wifi.recon.load  FILENAME                Load a saved Wi-Fi recon session from a file.
ECHO wifi.reset                               Reset the Wi-Fi module to its default state.
ECHO [ARP]
ECHO arp.spoof on                            Enable ARP spoofing to intercept traffic between devices on the network.
ECHO arp.spoof off                           Disable ARP spoofing.
ECHO arp.spoof.targets  IP/MAC               Set specific targets for ARP spoofing (can be an IP address or MAC address).
ECHO arp.spoof.internal on                   Enable internal network ARP spoofing (for attacks within the same subnet).
ECHO arp.spoof.internal off                  Disable internal network ARP spoofing.
ECHO arp.spoof.full-duplex on     ---        Enable full-duplex ARP spoofing, allowing interception of traffic in both directions.
ECHO arp.spoof.full-duplex off               Disable full-duplex ARP spoofing.
ECHO arp.spoof.whitelist  IP/MAC             Exclude specific IP addresses or MAC addresses from ARP spoofing.
ECHO arp.spoof.scan on                       Automatically scan the network to identify potential targets for ARP spoofing.
ECHO arp.spoof.scan off                      Disable automatic network scanning for ARP spoofing targets.
ECHO arp.ban  IP/MAC           ---           Block (ban) a specific IP address or MAC address on the network using ARP spoofing.
ECHO arp.unban  IP/MAC                       Unblock (unban) a previously banned IP address or MAC address on the network.
ECHO arp.ban on                              Enable ARP ban to block all network traffic from specified targets.
ECHO arp.ban off                             Disable ARP ban.
ECHO [DNS]
ECHO dns.spoof on                            Enable DNS spoofing to redirect DNS queries to a specified IP address.
ECHO dns.spoof off                           Disable DNS spoofing.
ECHO dns.spoof.domains  DOMAIN               Specify domains to be spoofed (can use wildcards, e.g., *.example.com).
ECHO dns.spoof.address  IP_ADDRESS           Set the IP address to which spoofed DNS requests will be redirected.
ECHO dns.spoof.all on                        Spoof all DNS requests, regardless of the domain.
ECHO dns.spoof.all off                       Only spoof the specified domains.
ECHO dns.spoof.whitelist  DOMAIN             Specify domains to be excluded from DNS spoofing (can use wildcards).
ECHO dns.spoof.hosts  HOSTFILE               Load a custom host file to define specific DNS redirections.
ECHO dns.spoof.cache on          ---         Enable DNS cache poisoning to speed up subsequent spoofed responses.
ECHO dns.spoof.cache off                     Disable DNS cache poisoning.
ECHO dns.spoof.gateway on                    Spoof the gateway DNS responses to intercept traffic more effectively.
ECHO dns.spoof.gateway off                   Disable spoofing of gateway DNS responses.
ECHO [UI]
ECHO ui.update                              Force an update of the web UI to the latest version.
ECHO ui.restart                             Restart the web UI service.
ECHO ui.info               ---              Display information about the web UI, such as its status and version.
ECHO ui.layout                              Change the layout of the web UI.
ECHO ui.proxy on                            Enable the HTTP/HTTPS web UI proxy.
ECHO ui.proxy off                           Disable the HTTP/HTTPS web UI proxy.
ECHO ui.proxy.sslstrip on                   Enable SSL stripping on the web UI proxy to downgrade HTTPS to HTTP.
ECHO ui.proxy.sslstrip off                  Disable SSL stripping on the web UI proxy.
ECHO ui.proxy.certificate  CERTFILE         Use a custom SSL certificate for the web UI proxy.
ECHO ui.view                                Display the web UI in the browser.
ECHO ui.set key value                       Set a specific configuration option for the web UI.
ECHO ui.reset                               Reset the web UI settings to their default values
echo.
REM logging section
IF %logging%==on echo WARNING  [COMMAND EXECUTION] ON [DATE:%date% TIME:%time%] BY [USER:%USERNAME%] ON [DOMAIN:%USERDOMAIN%] >>%~dp0manowarlog.txt
IF %logging%==on echo          [COMMAND THAT WAS EXECUTED: %catspal% ] >>%~dp0manowarlog.txt
goto catspallin
REM [blacklistsecurity]
:checkblacklistagainstpubip
setlocal enabledelayedexpansion
REM [BLACKLIST and WHITELIST CONFIG]
set "WHITELIST=85.148 145.107 87.209"
set "BLACKLIST=0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255"
REM white and black list method: you may use a full ip or the first 3 octets to ban all 255 hosts on the net no prefix used. cause privacy is a personal matter.
REM you can ban more by only using the first octet or whitelist them in the same way.
REM Get public IP
for /f "usebackq tokens=* delims=" %%i in (`curl -s ifconfig.me`) do set "PUBLIC_IP=%%i"
echo Your public IP: %PUBLIC_IP%
REM Split IP into octets
for /f "tokens=1-4 delims=." %%a in ("%PUBLIC_IP%") do (
    set "O1=%%a"
    set "O2=%%b"
    set "O3=%%c"
    set "O4=%%d"
)
set "IP4=%O1%.%O2%.%O3%.%O4%"
set "ALLOWED=false"
for %%w in (%WHITELIST%) do (
    set "W=%%w"
    for /f "tokens=1-4 delims=." %%a in ("!W!") do (
        set "W1=%%a"
        set "W2=%%b"
        set "W3=%%c"
        set "W4=%%d"
    )
    REM Compare IP octets to whitelist octets
    set "match=true"
    if defined W1 if "!O1!" NEQ "!W1!" set "match=false"
    if defined W2 if "!O2!" NEQ "!W2!" set "match=false"
    if defined W3 if "!O3!" NEQ "!W3!" set "match=false"
    if defined W4 if "!O4!" NEQ "!W4!" set "match=false"
    if "!match!"=="true" set ALLOWED=true
)
if "!ALLOWED!"=="true" (
    echo Whitelisted. Access granted.
    endlocal
    goto :publicipallowed
)
set "BLOCKED=false"
for %%b in (%BLACKLIST%) do (
    set "B=%%b"
    if "!B:~-1!" neq "." set "B=!B!."
    set "TMP=%PUBLIC_IP%."
    set "TMP2=!TMP:%B%=!"
    if not "!TMP!"=="!TMP2!" set BLOCKED=true
)
if "!BLOCKED!"=="true" (
    echo Warning! Blacklisted. Access denied.
    pause
    exit /b 1
)
echo Warning! Not whitelisted. Access denied.
pause
exit /b 1
REM [blacklistsecurity]
:scstsdmmasfdhfhg
echo [Credits]
echo Developed by: Levi Santegoets                             /  
echo This multitool program was created                       /
echo out of a passion for Windows command-line scripting     /
echo and system automation.                                 /     
echo The goal was:                                          \_____  
echo to design a versatile and efficient tool                       
echo that brings together useful utilities,              ______    
echo all accessible from one unified interface.         /         
echo                                                    \____    
echo Special thanks to the Windows CMD community             \     
echo and the countless online resources that inspired        /
echo and supported the development of this project.    _____/            
echo.
echo - [2025] [Levi Santegoets - the creator of this program]. All rights reserved.
echo.
goto catspallin
