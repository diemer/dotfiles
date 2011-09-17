#!/usr/bin/ruby

trigger = ARGV.shift

if trigger == 'songstart'
  songinfo = {}

  STDIN.each_line { |line| songinfo.store(*line.chomp.split('=', 2))}
  `growlnotify --image "~/.j2fly-dotfiles/images/pandora.png" -t "Now Playing" -m "#{songinfo['title']}\nby #{songinfo['artist']}"`
end