#!/bin/bash
mkdir -p ~/backup
sshfs -p2225 admin@truc.hd.free.fr:/share/backup/ ~/backup -orw,nodev,allow_other,reconnect,max_read=65536,compression=yes,auto_cache,no_check_root,kernel_cache,umask=0002,workaround=rename,auto_cache,defer_permissions,noappledouble,negative_vncache,intr,modules=iconv,from_code=UTF-8,to_code=UTF-8-MAC,volname=backup
