all: list hlist tree avltree priority_queue

CFLAGS += -g -Wall -Werror -fPIC

LDFLAGS += -lpthread -lm

CC := gcc

list: list_test.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o:%.c
	$(CC) -o $@ -c $< $(CFLAGS)

hlist:hlist_test.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o:%.c
	$(CC) -o $@ -c $< $(CFLAGS)

tree:tree_test.o tree.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o:%.c
	$(CC) -o $@ -c $< $(CFLAGS)

avltree:avltree.c avltree_test.c
	$(CC) -o $@ $^ $(LDFLAGS)

%.o:%.c
	$(CC) -o $@ -c $< $(CFLAGS)

priority_queue:priority_queue.o priority_queue_test.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o:%.c
	$(CC) -o $@ -c $< $(CFLAGS)

.PYTHON:clean list hlist all tree avltree priority_queue

clean:
	@rm -rf list hlist tree avltree priority_queue *.o