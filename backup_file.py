import os
import shutil
from datetime import datetime

def backup_folder(source_folder, backup_root):
    # Create backup directory name with timestamp
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_folder_name = f"backup_{timestamp}"
    backup_path = os.path.join(backup_root, backup_folder_name)

    try:
        # Copy the entire folder
        shutil.copytree(source_folder, backup_path)
        print(f"Backup successful! Files copied to: {backup_path}")
    except Exception as e:
        print(f"Backup failed: {e}")

# 🔧 Edit these paths as needed
source = "/home/shree/python_file"        # Folder you want to back up
backup_destination = "/home/shree/backup"   # Where backup will be stored

backup_folder(source, backup_destination)