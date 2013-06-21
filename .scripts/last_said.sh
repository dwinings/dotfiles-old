#!/bin/bash

tail -fn 1 ~/.weechat/logs/irc.irc.ecnet.org.\#wispchannel.weechatlog | sed -u "s/^[a-zA-Z0-9:-]* *[a-zA-Z0-9:-]*[ \t]*//" | sed -u "s/\t/:  /" | sed "s/$/\n/"  
