NAME := Colleen Grace Sully

all: $(NAME)

help:
	@echo Use nasm for the ''compilation''
	@echo Use %defstr for stringification of something similar to '#define STR(x) #x' in C/C++
	@echo Use %macro <name> <nb_param> ... %endmacro for multy line macro

.PHONY: all clean fclean re $(foreach n, $(NAME), test_$n) test help

clean:
	rm -rf tmp_Colleen Grace_kid.s tmp $(foreach n, $(NAME), $n.o)

fclean: clean
	rm -f $(NAME)

re: flcean all

test_Colleen: Colleen
	./Colleen > tmp_Colleen
	-diff tmp_Colleen Colleen.s
	@echo expected: no diff

test_Grace: Grace
	./Grace
	-diff Grace.s Grace_kid.s
	@echo expected: no diff

test_Sully: Sully
	rm -rf tmp
	mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; ls -la | grep Sully | wc -l;
	@echo "Expected: 19 (Sully + 6 * sully_? + 6 * Sully_?.s + 6 * Sully_?.o)"
	-cd tmp/; diff ../Sully.s Sully_5.s; diff ../Sully.s Sully_4.s; diff Sully_5.s Sully_0.s;
	@echo "Expected:\nno diff between Sully and Sully_5\n'mov r15,5' and 'mov r15,4' in Sully and Sully_5\n'mov r15,5' and 'mov r15,0' in Sully_5 and Sully_0"

test: $(foreach n, $(NAME), test_$n)

%.o: %.s
	nasm -f macho64 $< -o $@

.SECONDEXPANSION:

$(NAME): $$@.o
	gcc $< -o $@
