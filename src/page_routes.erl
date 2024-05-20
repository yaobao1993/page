-module(page_routes).

-export([init/2]).

init(Req, State) ->
    #{path := Path} = Req,
    My_path = erlang:binary_to_list(Path),
    [Page_user] = State,
    case Page_user:is_route_registered(My_path) of
        false ->
            Status = 404,
            Req2 = cowboy_req:reply(Status, Req),
            {ok, Req2, State};
        true ->
            Status = 200,
            Headers = Page_user:get_res_headers(),
            Body = Page_user:get_res_body(),
            Req2 = cowboy_req:reply(Status, Headers, Body, Req),
            {ok, Req2, State}
    end.
