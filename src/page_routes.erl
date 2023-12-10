-module(page_routes).

-export([init/2]).

init(Req, State) ->
    [Page_user_module] = State,
    Status = 200,
    Headers = Page_user_module:get_res_headers(),
    Body = Page_user_module:get_res_body(),
    Req2 = cowboy_req:reply(Status, Headers, Body, Req),
    {ok, Req2, State}.
