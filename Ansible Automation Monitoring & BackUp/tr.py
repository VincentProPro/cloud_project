import paramiko
import os
import datetime
# Paramètres de la connexion SSH pour le serveur de destination
destination_hostname = ''
destination_username = 'epitech'
destination_key_filename = '/home/epitech/vspcloud' # chemin vers le fichier id_rsa destination
#destination_key_password = '' # passphrase du fichier id_rsa destination (si nécessaire)
# Paramètres du transfert de fichiers

remote_path='/tmp/' # répertoire distant où les fichiers seront transférés
local_path = '/home/epitech' # répertoire local contenant les fichiers à transférer


import paramiko
import os
import datetime
# Paramètres de la connexion SSH pour le serveur de destination
destination_hostname = 'vmbackup.westeurope.cloudapp.azure.com'
destination_username = 'epitech'
destination_key_filename = '/home/epitech/vpscloud' # chemin vers le fichier id_rsa destination
# Paramètres du transfert de fichiers
remote_path='/tmp/' # répertoire distant où les fichiers seront transférés
local_path = '/tmp/db-backups' # répertoire local contenant les fichiers à transférer
#céer un client SSH pour le serveur de destination
destination_client = paramiko.SSHClient()
destination_client.set_missing_host_key_policy(paramiko. AutoAddPolicy())
destination_client.connect(destination_hostname, username=destination_username, key_filename=destination_key_filename)
#local_dir = '/var/lib/pgbackrest/backup/db-primary'
remote_dir = '/tmp/'
x = datetime.datetime.now()
DATE = x.strftime("%d-%m-%y")
zip_path = f'/tmp/db-backups/db-mysql_{DATE}.sql.zip'
os.system(f'cd {local_path} && zip -r {zip_path} *')
# Transférer les fichiers du serveur source vers le serveur de destination
sftp = destination_client.open_sftp()
sftp.put(zip_path, remote_path + f'db-mysql_{DATE}.sql.zip')
sftp.close()
print('Le fichier a été transféré avec succès.')
# Fermer les connexions SSH
#source_client.close()
destination_client.close()