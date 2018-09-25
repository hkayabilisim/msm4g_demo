CFLAGS = -std=c99 -Wall -O3 
LIBFLAGS= -lm -I../msm4g -L../msm4g/Debug -lmsm4g
CC = gcc
OUTFOLDER = Debug

.PHONY: directories

DEMO1 = $(OUTFOLDER)/msm4g_demo1


all: directories $(DEMO1)

$(OUTFOLDER)/%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c -o $@ $<
	
$(DEMO1): $(DEMO1).o
	$(CC) $(CFLAGS) -o $(DEMO1) $(DEMO1).o $(LIBFLAGS)

demo1: $(DEMO1)
	$(DEMO1)

directories: $(OUTFOLDER)

$(OUTFOLDER):
	mkdir -p $(OUTFOLDER)

clean:
	rm -f $(OUTFOLDER)/*.o $(DEMO1)

