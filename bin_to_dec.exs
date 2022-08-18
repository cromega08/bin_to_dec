defmodule App do
	def run do
		bin = String.trim(IO.gets("To exit, enter without input\n\nBinary: "))
		cond do
			bin === "" -> System.halt()

			String.match?(bin, ~r/[a-zA-Z]{1,}|[2-9]{1,}|[[:blank:]]{1,}/sm) -> IO.puts("Invalid input, only 0 and 1 are allowed\n")

			String.length(bin) > 8 -> IO.puts("The max. digits to handle are 8 (ex. 10101010)\n")

			String.length(bin) > 0 and String.length(bin) < 8 ->

				dec = String.to_integer(bin, 2)
		  		IO.puts("Decimal: #{dec}\n")

			true -> IO.puts("Something went wrong\n")
		end
		System.shell("clear")
		App.run()
  	end
end

App.run()
