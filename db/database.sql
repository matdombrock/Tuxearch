-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: cli
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INFO` text NOT NULL,
  `COMMAND` text NOT NULL,
  `TAGS` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands`
--

LOCK TABLES `commands` WRITE;
/*!40000 ALTER TABLE `commands` DISABLE KEYS */;
INSERT INTO `commands` VALUES (2,'adduser - add user','adduser <username>','name new create setup build make'),(3,'chown - change ownership of file','chown <user>:<user> <FileName>','own user owner'),(4,'chown - change ownership of a directory','chown -R <XYZ> <DirectoryName>','own directory user owner'),(5,'service - start service','service <ServiceName> start','begin create'),(6,'service - stop service','service <ServiceName> stop','end quit'),(7,'service - restart service','service <ServiceName> restart','reset start stop'),(8,'groupadd - new group','groupadd <GroupName>','create make setup'),(9,'usermod - put user in group','usermod -G <GroupName> <username>','put user set switch'),(10,'pwd - show current directory','pwd','directory folder where location'),(11,'ls - list files in current directory','ls','show explore'),(12,'ls - list hidden files (and all other files) in current directory','ls -a','show explore hidden'),(13,'ls - list files in current directory with details','ls -l','show explore details info'),(14,'touch - create a hidden file','touch .<FileName>','hide make new'),(15,'touch - create a hidden directory','touch .<DirectoryName>','hide make new folder'),(16,'mv - hide a file','mv <FileName> .<FileName>','hidden'),(17,'mv - hide a directory','mv <DirectoryName> .<DirectoryName>','hidden folder'),(18,'cd - change directory','cd <DirectoryName>','changedirectory folder switch go to goto'),(19,'move up one directory','cd ..','changedirectory folder switch go to goto back return'),(20,'mkdir - create a directory','mkdir <DirectoryName>','folder new build make setup'),(21,'rmdir - remove and empty directory','rmdir <DirectoryName>','destroy delete'),(22,'rm - remove a directory with files in it','rm -r <DirectoryName>','rmdir destroy delete empty non-empty'),(23,'touch - create an empty file','touch <FileName>','make new build setup'),(24,'create a file with content','echo \"<Your Content Here>\" >> <FileName>','print write show text output save'),(25,'man - show manual','man <CommandName>','help command use usage'),(26,'show help','<CommandName> --help','man manual command use usage'),(27,'cp - copy a file','cp <FileName> <FileDestination>','paste'),(28,'mv - move a file','mv <FileName> <FileDestination>','cut'),(29,'rename a file','mv <FileName> <NewFileName>','name change'),(30,'cat - display file contents','cat <FileName>','text output show display read'),(31,'edit file contents','<Editor> <FileName>','edit text show read display change write'),(32,'su - switch user account','su <UserName>','root name username'),(33,'sudo - execute as root','sudo <Command>','su admin administrator super user'),(34,'df - see available disk space','df -m','hard drive hdd ssd'),(35,'du - see disk usage','du <DirectoryName>','hard drive hdd ssd'),(36,'zip a file','zip <NewZipFileName>.zip <file1> <file2> <file3>','compress unzip .zip'),(37,'zip a directory','zip -r <NewFileName>.zip <DirectoryToZip>','compress unzip .zip'),(38,'unzip a file','unzip <FileName>.zip','compress unzip zip .zip'),(39,'uname - see system information','uname -a','info stats linux version os software'),(40,'install a package','apt install <PackageName>','app application program software apt-get'),(41,'update package listings','apt update','app application program software apt-get'),(42,'upgrade all packages','apt upgrade','app application program software apt-get'),(43,'look for an installable package','apt search <Search Terms>','app application program software apt-get find location'),(44,'ping - ping an IP','ping <IPAddr>','networking connection address server'),(45,'ifconfig - show internet connection information','ifconfig','networking connection address server ip find search my mine local'),(46,'nmap - search an IP for open ports','nmap <IPAddr>','networking connection address server'),(47,'search the output of a command','<CommandName> | grep <SearchTerm>','find look locate discover'),(48,'ssh - ssh to a remote server','ssh <RemoteUser>@<RemoteServer>','login access secure'),(49,'generate an ssh key','ssh-keygen','login access secure'),(50,'copy an ssh id to a remote server','ssh-copy-id -i <IDName> <RemoteUser>@<RemoteServer>','login access secure identity key'),(51,'top - see system processes','top','apps task manager applications software running ram cpu'),(52,'launch a detachable program with tmux','tmux new -s <SessionName>','apps task manager applications software running ram cpu'),(53,'break away from tmux and detach','ctrl+b d','apps task manager applications software running ram cpu'),(54,'attach to tmux session','tmux a -t <SessionName>','apps task manager applications software running ram cpu'),(55,'List tmux sessions','tmux ls','apps task manager applications software running ram cpu'),(56,'kill tmux session','tmux kill-session -t <SessionName>','apps task manager applications software running ram cpu'),(57,'kill all tmux sessions','tmux ls | grep : | cut -d. -f1 | awk \'{print substr($1, 0, length($1)-1)}\' | xargs kill','apps task manager applications software running ram cpu'),(58,'see local users','cut -d: -f1 /etc/passwd','view all name username names usernames user list'),(59,'list and describe all installed packages','dpkg -l','view apps applications software'),(60,'name all installed packages','dpkg --get-selections | grep -v \"deinstall\" | cut -f1','view apps applications software'),(61,'edit path on ubuntu ','<Editor> /etc/environment','enviroment path change'),(62,'chmod - change file permissions','chmod <Options> <Permissions> <FileName>','execute executable read write access permission allow allowed lock disallow access'),(63,'chmod - change directory permissions','chmod -R <Permissions> <DirectoryName>','execute executable read write access permission allow allowed lock disallow folder access'),(64,'protect file from overwrite','chmod 400 <FileName>','overwriting accident change lock permission permissions'),(65,'protect file from other users','chmod 700 <FileName>',' hide lock public access permission permissions'),(66,'allow anyone to control file','chmod 777 <FileName>','wild public access permission permissions'),(67,'allow file to be read and executed by anyone','chmod 755 <FileName>','server web public permission permissions access'),(68,'edit path on debian','<Editor> /etc/profile','enviroment path change'),(69,'enter cli mode','ctrl + alt + f1','command line interface switch change cmd terminal'),(70,'exit cli mode','alt + f7','command line interface switch change cmd terminal'),(71,'see your groups','groups','show view see look check find group'),(72,'see a user\'s groups','groups <UserName>','show view see look check find group'),(73,'block an address','iptables -I INPUT -s <IP_ADDRESS> -j DROP','stop iptables blacklist secure security ban login prevent firewall ip'),(74,'check open ports','netstat -an | grep -i listen','view see secure security stats stat ports firewall'),(75,'see who is logged in','w','users check security secure log login ip address view system'),(76,'see info about services','service --status-all','list all running check view '),(77,'see monitor info','xrandr','display resolution graphics screen'),(78,'set primary monitor','xrandr --output <MonitorName> --primary','display resolution graphics screen default'),(79,'turn monitor off','xrandr --output <MonitorName> --off','display resolution graphics screen'),(80,'turn monitor on','xrandr --output <MonitorName> --auto','display resolution graphics screen'),(81,'see recent logins','last','secure security login user username names ip ips address log history'),(82,'see historical logins','last -f /var/log/wtmp.1','secure security login user username names ip ips address log old history'),(83,'get info about an ip','whois <IP>','who check information see look lookup search records'),(84,'see bash history','cat $HISTFILE','record command commands last check view'),(85,'live monitor a file for changes','tail -f <FileName>','check view real time real-time logging security watch log logs'),(86,'check path settings','echo $PATH','see look view'),(87,'see members of a group','members <GroupName>','check users'),(88,'see all groups','cat /etc/group','check list'),(89,'shutdown the system','shutdown','shut down exit end session computer server'),(90,'reboot the system','reboot','shut down exit restart session computer server'),(91,'suspend the system','systemctl suspend ','shut down exit pause hibernate session computer');
/*!40000 ALTER TABLE `commands` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-17  4:47:27
