import os 
import shutil
import sys
import ctypes
import time
import platform
import webbrowser

# First, get admin priv
def isAdmin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False

print('Starting Instalation...')
time.sleep(3)
if isAdmin():
    pass
else:
    print('You must run as administrator')
    print('Restarting as admin... ', end='' )
    ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, " ".join(sys.argv), None, 1)
    print('Done!')
    sys.exit()

# Check OS
ossystem = platform.system()
if ossystem != 'Windows':
    print('Sorry... your os ' + ossystem + ' is not supported')
    exittoleave = input('Press enter to exit... ')
    sys.exit()

# Find were installation file and pip file is...
print('Finding installation file... ', end='')
usercom = os.getlogin()
installfile_path = 'C:/Users/' + usercom + '/Downloads/remoteCON-master/remoteCON-master/remoteCON_installer/remoteCON_target.pyw'
pipfile_path = 'C:/Users/' + usercom + '/Downloads/remoteCON-master/remoteCON-master/remoteCON_installer/piprequire.txt'
gitpath = 'C:/Program Files/Git'
installpath_found = os.path.isfile(installfile_path)
pippath_found = os.path.isfile(pipfile_path)
gitpath_found = os.path.isdir(gitpath)
if installpath_found == False:
    print('Please put remoteCON_target.pyw into Downloads/remoteCON-master/remoteCON-master/remoteCON_installer/remoteCON_target.pyw')
    exittoleave = input('Press enter to exit...')
    sys.exit()
elif pippath_found == False:
    print('Please put piprequire.txt Downloads/remoteCON-master/remoteCON-master/remoteCON_installer/piprequire.txt')
    exittoleave = input('Press enter to exit... ')
    sys.exit()
elif gitpath_found == False:
    print('Please Install git... This program will automatically send you to download')
    time.sleep(2)
    print('If you don\'t know how to install just keep hitting next...')
    webbrowser.open('https://github.com/git-for-windows/git/releases/download/v2.27.0.windows.1/Git-2.27.0-32-bit.exe')
    print('Please install before continuing...')
    exittoleave = input('Press enter to exit...')
    sys.exit()

print('Found all files needed')
# Install main file
print('Installing main files... ', end='')
time.sleep(5)
shutil.copy2(installfile_path, 'C:/ProgramData/Microsoft/Windows/Start Menu/Programs/StartUp')
print('Done!!!')

# Install extras
print('Installing Extras... ')
time.sleep(3)
os.system('cmd /c "pip --disable-pip-version-check install -r piprequire.txt"')
time.sleep(3)
print('')
print('Done installing extras!!!')

# Done!!!
print('Finishing up the installation... ')
print('')
time.sleep(3)
print('Done!!!')
exittoleave = input('Press enter to exit...')
sys.exit()
