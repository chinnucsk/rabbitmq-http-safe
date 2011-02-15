%%%
%%% @doc HTTP SAFE includes
%%% @author David Dossot <david@dossot.net>
%%%
%%% See LICENSE for license information.
%%% Copyright (c) 2011 David Dossot
%%%

-define(USERNAME, <<"http_safe_user">>).
-define(PASSWORD, <<"http_safe_pwd">>).
-define(VHOST, <<"http_safe">>).

-define(CONNECTION_PARAMS, #amqp_params{username = ?USERNAME,
                                        password = ?PASSWORD,
                                        virtual_host = ?VHOST}).

-define(PENDING_REQUESTS_EXCHANGE, <<"pending_requests">>).

-define(DECLARE_PENDING_REQUESTS_EXCHANGE, #'exchange.declare'{exchange = ?PENDING_REQUESTS_EXCHANGE,
                                                               type = <<"fanout">>,
                                                               durable = true,
                                                               auto_delete = false}).
                                                               
-define(CID_HEADER, "X-SAFE-Correlation-Id").
-define(TARGET_URI_HEADER, "X-SAFE-Target-URI").
-define(TARGET_MAX_RETRIES_HEADER, "X-SAFE-Max-Retries").
-define(CALLBACK_URI_HEADER, "X-SAFE-Callback-URI").
