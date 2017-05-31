
class bkp:
	
#dois underlines na frente da variavel a torna private.
#self é a referencia da variavel, é o this do Python.

	def __init__(self, server):
		self.__server = server		

	def Servidor(self):
		return self.__server

	
