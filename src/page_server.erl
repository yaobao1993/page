-module(page_server).

-export([start/0, stop/0]).

start() ->
    start(4000).

start(Port) ->
    {ok, _} = application:ensure_all_started(cowboy),
    Routes = [
            {"/static/[...]", cowboy_static, {dir, "../static"}}
        ],
    Dispatch = cowboy_router:compile([{'_', Routes}]),
    cowboy:start_clear(http, [{port, Port}],
        #{env => #{dispatch => Dispatch}}),
    ok.

stop() ->
    application:stop(cowboy),
    application:stop(ranch),
    ok.
