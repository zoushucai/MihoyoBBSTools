import logging
import os
from datetime import datetime

from loguru import logger as log

current_directory = os.path.dirname(os.path.realpath(__file__))

mlogs_directory = "logs_mhy"
log_file = f"qiandao_{datetime.now():%Y-%m-%d}.log"
file_path = os.path.join(current_directory, mlogs_directory, log_file)
os.makedirs(os.path.join(current_directory, mlogs_directory), exist_ok=True)
log.add(file_path, rotation="5 MB", compression="zip", encoding="utf-8")
httpx_log = log