#ifndef DICTIONARY_LIBRARY_H
#define DICTIONARY_LIBRARY_H

#include <stdlib.h>
#include <stdio.h>

#define MIN_CAPACITY 10
typedef struct node node;

struct node {
    char name;
    struct node* children;
    size_t capacity; /* количество элементов node по children*/
    size_t here; /* первый незаполненный индекс */
    void* leaf; /* универсальный указатель на "лист" дерева */
};

/* Функция создания корня дерева. Обязательна перед использованием остальных.
 * Возвращает 0, если всё прошло успешно.
 * Возвращает 1, если root уже создан (уже не NULL)
 * Возвращает 2, если динамическая память не выделена. */
int new_root(void); /* ф.*/

/* current теперь показывает на root*/
void go_root(void);

/*Добавляет узел с именем c в дочерние по отношению к узлу, на который указывает current */
size_t append_char_if_needed(char c);

/* Переходит к дочернему узлу, именованному как c. Если такого нет, то создаёт его */
void go_char(char c);

/* Выводит список всех дочерних элементов в формате: "in ИМЯ_РОДИТЕЛЬСКОГО_УЗЛА: ИМЯ_ДОЧЕРНЕГО_1 ИМЯ ДОЧЕРНЕГО_2 ...".
 * Для узла root выводится in root: ИМЯ_ДОЧЕРНЕГО_1 ИМЯ_ДОЧЕРНЕГО_2 ... */
void print_cchld(void);

/* Удаляет дерево */
void erase_trie(void);

#endif //DICTIONARY_LIBRARY_H
