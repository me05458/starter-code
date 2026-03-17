LINK_TARGET = run
OBJS = \
       random_file.o\
       main_file.o\

REBUILDABLES = $(OBJS) $(LINK_TARGET)
all: $(LINK_TARGET)
	@echo done

$(LINK_TARGET): $(OBJS) makefile
	g++ -o $(LINK_TARGET) $(OBJS)

%.o : %.cpp
	g++ -o $@ -c $<

%.cpp : %.h

clean:
	rm -f $(REBUILDABLES)
