/-  *graph-store
=>
|%
++  article-text
  'Sample text здесь'
--
:-  %say
|=  $:  [now=@da eny=@uvJ =beak]
        [[[our=ship name=term] top=@ title=cord ~] ~]
    ==
=|  blank=post
=:  author.blank     our
    time-sent.blank  now
    contents.blank   ~
==
=/  chapter-contents
  ~[[%text ''] [%text article-text]]
:-  %graph-update
^-  update
:+  %0  now
:+  %add-nodes  [our name]
%-  ~(gas by *(map index node))
:~
    [~[top] [blank(index ~[top], contents ~[[%text title]]) [%empty ~]]]
    [~[top %chapters] [blank(index ~[top %chapters]) [%empty ~]]]
    [~[top %chapters 1] [blank(index ~[top %chapters 1], contents chapter-contents) [%empty ~]]]
==
