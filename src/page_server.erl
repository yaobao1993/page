-module(page_server).

-export([start/1, stop/0]).

start(Config) ->
    #{port := Port, page_user_module := Page_user_module} = Config,
    {ok, _} = application:ensure_all_started(cowboy),
    Routes = [
        {"/static/[...]", cowboy_static, {dir, "../static"}},
        {"/[...]", page_routes, [Page_user_module]}
    ],
    Dispatch = cowboy_router:compile([{'_', Routes}]),
    cowboy:start_clear(
        http,
        [{port, Port}],
        #{env => #{dispatch => Dispatch}}
    ),
    ok.

stop() ->
    application:stop(cowboy),
    application:stop(ranch),
    ok.
