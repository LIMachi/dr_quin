NAME := Colleen Grace Sully

RUSTC := ~/.cargo/bin/rustc

all: $(NAME)

.PHONY: all clean fclean re $(foreach n, $(NAME), test_$n) test help

clean:
	rm -rf tmp_Colleen Grace_kid.rs tmp

fclean: clean
	rm -f $(NAME)

re: flcean all

test_Colleen: Colleen
	./Colleen > tmp_Colleen
	-diff tmp_Colleen Colleen.rs
	@echo expected: no diff

test_Grace: Grace
	./Grace
	-diff Grace.s Grace_kid.rs
	@echo expected: no diff

test_Sully: Sully
	rm -rf tmp
	mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; ls -la | grep Sully | wc -l;
	#@echo "Expected: 19 (Sully + 6 * sully_? + 6 * Sully_?.rs + 6 * Sully_?.o)"
	-cd tmp/; diff ../Sully.rs Sully_5.rs; diff ../Sully.rs Sully_4.rs; diff Sully_5.rs Sully_0.rs;
	#$@echo "Expected:\nno diff between Sully and Sully_5\n'mov r15,5' and 'mov r15,4' in Sully and Sully_5\n'mov r15,5' and 'mov r15,0' in Sully_5 and Sully_0"

test: $(foreach n, $(NAME), test_$n)

$(BREW):
	-git clone https://github.com/Homebrew/brew ~/.brew && echo 'export PATH=~/.brew/bin:$PATH' >> ~/.zshrc && source ~/.zshrc && brew update

$(RUSTC):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	source ~/.cargo/env

.SECONDEXPANSION:

$(NAME): $$@.rs $(RUSTC)
	$(RUSTC) $< -o $@
