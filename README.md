# Backup and Transfer Script

This script performs a MySQL database backup, compresses the backup file, and transfers it to a remote server using SSH.

## Requirements

- Python 3.10
- Paramiko library (`pip install paramiko`)
- MySQL Connector library (`pip install mysql-connector-python`)

## Configuration

### Local Machine (MySQL Database)

- Ensure that Python 3.10 is installed.
- Install required Python libraries using `pip install paramiko mysql-connector-python`.

### Remote Server

- Ensure that SSH is set up on the remote server.
- Install required Python libraries using `pip install paramiko`.

## Usage

1. Clone the repository to your local machine.

```bash
git clone https://github.com/your-username/backup-and-transfer-script.git
cd backup-and-transfer-script
