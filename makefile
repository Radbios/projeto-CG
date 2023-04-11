# --- COMPILA PROGRAMAS OPENGL ---
# --- COMO USAR? ---
# --- DIGITE: make programa ---

# --- COMPILADOR ---
CC = gcc

# --- LIBS USADAS ---
XLIBS = -Wall -lGL -lGLU -lglut -lGLEW -lglfw -lX11 -lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor -lm

# --- ARQUIVO EXE ---
ARQ = -o $@

##### RULES #####

.SUFFIXES: .c

.c: 
	$(CC) $< $(ARQ) $(XLIBS) 

##### TARGETS ######

clean:
	-rm *.o *~