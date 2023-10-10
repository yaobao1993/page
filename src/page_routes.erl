-module(page_routes).

-export([init/2]).

init(Req, State) ->
    Status = 200,
    Headers = #{
            <<"content-type">> => <<"text/plain">>
        },
    Body = <<"Hello!">>,
    Req2 = cowboy_req:reply(Status, Headers, Body, Req),
    {ok, Req2, State}.
