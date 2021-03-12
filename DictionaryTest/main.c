#include "../Dictionary/library.h"

//int z = 5;

int main(void) {
    new_root();
    append_char_if_needed('u');
    append_char_if_needed('b');
    append_char_if_needed('t');
    go_char('b');
    append_char_if_needed('a');
    print_cchld();
    go_root();
    print_cchld();
    erase_trie();
    return 0;
}