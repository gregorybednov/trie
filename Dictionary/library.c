#include "library.h"

node *root = NULL;
node *current = NULL;

void go_root(void){ /* псевдоним current = root */
    current = root;
}

int malloc_cchld(void){ /* memory allocate for current->children - выделяет минимальную память из кучи */
    if (current->children!=NULL) return 1; /* если неудачно, то вернуть ошибку 1 - память уже выделена*/
    current->children = malloc(MIN_CAPACITY*sizeof(node));
    if (current->children==NULL) return 2; /* если неудачно, то вернуть ошибку 2 - память не удалось выделить*/
    current->capacity = MIN_CAPACITY;
    current->here = 0;
    return 0;
}

void more_space_if_needed (void){
    if (current->here!=current->capacity) return;
    current->capacity *= 2;
    current->children = realloc(current->children,current->capacity);
}

size_t where(char c){ /*возвращает то место, где стоит (или должна была стоять) литера c */
    /*TODO: когда дойдут руки, надо будет сделать поиск бинарным, a пока... */
    size_t pos = 0;
    while (((current->children)[pos].name < c)&&(pos<current->here)) pos++;
    return pos;
}

void move_right(size_t pos){
    size_t i;
    for (i=current->here; i>pos; i--) current->children[i] = current->children[i-1];
    current->here++;
    more_space_if_needed();
}

size_t append_char_if_needed(char c){
    malloc_cchld();
    size_t pos = where(c);
    if (current->children[pos].name==c) return pos;
    move_right(pos);
    current->children[pos].children = NULL;
    current->children[pos].name = c;
    current->children[pos].here = 0;
    current->children[pos].leaf = NULL;
    return pos;
}

void go_char(char c){
    current = current->children+append_char_if_needed(c);
}

void print_cchld(void){
    size_t i;
    printf("in ");
    if (current->name=='\0'){
        printf("root");
    } else {
        printf("%c",current->name);
    }
    printf(": ");
    for (i=0; i<current->here; i++) printf("%c ", current->children[i].name);
    printf("\n");
}

int new_root(void){
    if (root!=NULL) return 1;
    root = malloc(sizeof(node));
    if (root==NULL) return 2;
    go_root();
    malloc_cchld();
    return 0;
}

void erase_node(void){
    size_t i;
    node *p = current;
    for (i=0; i<current->here; i++) {
        current = current->children+i;
        erase_node();
    }
    free(p);
}

void erase_trie(void){
    go_root();
    erase_node();
    root = NULL;
    current = NULL;
}