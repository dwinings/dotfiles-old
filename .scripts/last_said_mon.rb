
last_said = ""
while(true)
  now_said = `tail -n 1 ~/.weechat/logs/irc.irc.ecnet.org.\#wispchannel.weechatlog | sed "s/^[a-zA-Z0-9:-]* *[a-zA-Z0-9:-]*[ \t]*//" | sed "s/\t/:  /"  | cut -c 1-50`
  puts now_said unless now_said == last_said
  last_said = now_said
  sleep(0.5)
end
