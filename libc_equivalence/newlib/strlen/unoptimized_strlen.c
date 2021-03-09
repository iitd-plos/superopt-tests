#include <stdio.h>

#include <stdio.h>

size_t strlen(const char* s){
        const char* a = s;
        for (;;){
        	if(!(*s)){
        		return s-a;
        	}
        	s++;
        }
}

int main(){
        return 0;
}

