#!/bin/bash
# use as root
#limpeza da memoria de cache so sitema

#item 01: pagecache: limpeza da memoria de paginas
sync && echo 1 > /proc/sys/vm/drop_caches

#item 02: liberacao dos dentries e dos inodes do sistema
sync && echo 2 > /proc/sys/vm/drop_caches

#item 03: recorrencia, limpeza do pagecache, dentries, e inodes 
sync && echo 3 > /proc/sys/vm/drop_caches
