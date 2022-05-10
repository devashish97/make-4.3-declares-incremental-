edit : main.o kbd.o command.o display.o \
	insert.o search.o files.o utils.o
	cc -o edit main.o kbd.o command.o display.o \
		insert.o search.o files.o utils.o
main.o : main.c defs.h
	/bin/ksh -c 'cc -c main.c'
kbd.o : kbd.c defs.h command.h
	/bin/ksh -c 'cc -c kbd.c'
command.o : command.c defs.h command.h
	/bin/ksh -c 'cc -c command.c'
display.o : display.c defs.h buffer.h
	/bin/ksh -c 'cc -c display.c'
insert.o : insert.c defs.h buffer.h
	/bin/ksh -c 'cc -c insert.c'
search.o : search.c defs.h buffer.h
	/bin/ksh -c 'cc -c search.c'
files.o : files.c defs.h buffer.h command.h
	/bin/ksh -c 'cc -c files.c'
utils.o : utils.c defs.h
	/bin/ksh -c 'cc -c utils.c'
clean :
	/bin/ksh -c 'rm main.o kbd.o command.o display.o \
	  insert.o search.o files.o utils.o'
