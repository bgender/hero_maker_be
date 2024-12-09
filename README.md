# HeroMaker

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

'mix phx.gen.context Instances Instance instances name:string description slot_id:references:slots set_id:references:sets
'
'mix phx.gen.context Variables Variable variables set_id:references:sets slot_id:references:slots name info:map
'
'mix phx.gen.schema Set sets set_name:string
'
'mix phx.gen.context Slots Slot slots slot_name:string trait:string
'