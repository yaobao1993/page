-module(page_client).

-export([start/0, stop/0]).
-export([get/3]).

start() ->
    {ok, _} = application:ensure_all_started(gun),
    ok.

stop() ->
    application:stop(gun),
    ok.

get(Host, Port, Path) ->
    {ok, Pid} = gun:open(Host, Port),
    {ok, _} = gun:await_up(Pid),
    Ref = gun:get(Pid, Path),
    case gun:await(Pid, Ref) of
        {response, fin, _Status, _Headers} ->
            no_data;
        {response, nofin, _Status, _Headers} ->
            {ok, Body} = gun:await_body(Pid, Ref),
            io:format("~s~n", [Body])
    end.
