-module(page).

-export([init/0]).

init() ->
    add_third_code().

add_third_code() ->
    Third_path = "/Users/by/start/page/third",
    code:add_path(Third_path ++ "/cowboy-2.9.0/deps/cowlib/ebin"),
    code:add_path(Third_path ++ "/cowboy-2.9.0/deps/ranch/ebin"),
    code:add_path(Third_path ++ "/cowboy-2.9.0/ebin"),
    code:add_path(Third_path ++ "/gun-1.3.3/ebin"),
    ok.
