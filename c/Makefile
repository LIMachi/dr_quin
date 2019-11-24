NAME := Colleen Grace Sully

all: $(NAME)

.PHONY: all clean fclean re $(foreach n, $(NAME), test_$n) test

clean:
	rm -rf tmp_Colleen Grace_kid.c tmp

fclean: clean
	rm -f $(NAME)

re: flcean all

test_Colleen: Colleen
	./Colleen > tmp_Colleen
	-diff tmp_Colleen Colleen.c
	@echo expected: no diff

test_Grace: Grace
	./Grace
	-diff Grace.c Grace_kid.c
	@echo expected: no diff

test_Sully: Sully
	rm -rf tmp
	mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; ls -la | grep Sully | wc -l;
	@echo "Expected: 13 (Sully + 6 * sully_? + 6 * Sully_?.c)"
	-cd tmp/; diff ../Sully.c Sully_5.c; diff ../Sully.c Sully_4.c; diff Sully_5.c Sully_0.c;
	@echo "Expected:\nno diff between Sully and Sully_5\n'int = 5' and 'int = 4' in Sully and Sully_5\n'int = 5' and 'int = 0' in Sully_5 and Sully_0"

test: $(foreach n, $(NAME), test_$n)

.SECONDEXPANSION:

$(NAME): $$@.c
	gcc $< -o $@
