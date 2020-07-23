# Server Socket Code
import socket

host = socket.gethostname()
port = 4000

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind((host, port))

data = ''
endconnect = False
while endconnect == False:
    data, addr = s.recvfrom(1024)
    data = data.decode('utf-8')
    # Put if's here
    if data.lower() == 'test':
        data = 'Test Successful'

    elif data.lower() == 'endtarget':
        data = 'End Completed'
        endconnect = True

    else:
        data = 'Command Not Found'

    s.sendto(data.encode('utf-8'), addr)
s.close()
