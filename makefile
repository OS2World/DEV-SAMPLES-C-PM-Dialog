# nmake makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#
#  Compile::GNU C
#  Make: nmake or GNU make
all : dialog.exe

dialog.exe : dialog.obj dialog.res dialog.def
	gcc -Zomf dialog.obj dialog.def -o dialog.exe
	wrc dialog.res

dialog.obj : dialog.c dialog.h
	gcc -Wall -Zomf -c -O2 dialog.c -o dialog.obj

dialog.res : dialog.rc 
	wrc -r dialog.rc

clean :
	rm -rf *exe *res *obj
