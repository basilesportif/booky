/-  *graph-store
:-  %say
|=  $:  [now=@da eny=@uvJ =beak]
        [[[our=ship name=term] title=cord ~] ~]
    ==
=|  book1=post
=:  author.book1     our
    index.book1    [3]~
    time-sent.book1  now
    contents.book1  ~[[%text title]]
==
=|  book2=post
=:  author.book2     our
    index.book2    [3]~
    time-sent.book2  now
    contents.book2  ~[[%text 'The Triumph of Timtime']]
==
=|  chapters=post
=:  author.chapters  our
    index.chapters  ~[3 %chapters]
    time-sent.chapters  now
    contents.chapters  ~
==
:-  %graph-update
^-  update
:+  %0  now
:+  %add-nodes  [our name]
%-  ~(gas by *(map index node))
:~
    [index.book1 [book1 [%empty ~]]]
    [index.chapters [chapters [%empty ~]]]
    [index.book2 [book2 [%empty ~]]]
==
