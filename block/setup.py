from sysconfig import get_paths
from pprint import pprint
import os

info = get_paths()  # a dictionary of key-paths
includy = info['include']
stringi_1="export CPLUS_INCLUDE_PATH=\"\\$CPLUS_INCLUDE_PATH:"+includy+"\""
stringi_2="export C_INCLUDE_PATH=\"\\$C_INCLUDE_PATH:"+includy+"\""
os.system("./setup2.sh "+stringi_1)
os.system("./setup2.sh "+stringi_2)
os.system("./setupBoost.sh "+includy)
