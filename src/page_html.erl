-module(page_html).

-export([create_element/2]).

create_element(Tag, Content) ->
    #{tag => Tag, content => Content}.
