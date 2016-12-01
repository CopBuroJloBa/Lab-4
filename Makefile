
sort: main.o sort.o
	mkdir bin
	gcc -o bin/sort obj/main.o obj/sort.o

main.o: src/main.c
	mkdir obj
	gcc -c src/main.c -o obj/main.o

sort.o: src/sort.c
	gcc -c src/sort.c  -o obj/sort.o
clean:
	rm -f sort *.o
	rf obj
	rf bin	
	