from tabula import read_pdf

import os

print(os.getcwd())

data = read_pdf('RESOURCES/1.pdf', multiple_tables=True, lattice=True)

for ix, df in enumerate(data):
	print(ix, df)
