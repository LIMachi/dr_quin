/*
	Created by Hugo MARTZOLF on 3/4/19.
*/
#include <stdio.h>
void Colleen(const char *s){printf(s,10,9,34,s);}int main(){
/*
	This program will print its own source when run.
*/
Colleen("/*%1$c%2$cCreated by Hugo MARTZOLF on 3/4/19.%1$c*/%1$c#include <stdio.h>%1$cvoid Colleen(const char *s){printf(s,10,9,34,s);}int main(){%1$c/*%1$c%2$cThis program will print its own source when run.%1$c*/%1$cColleen(%3$c%4$s%3$c);return 0;}%1$c");return 0;}
