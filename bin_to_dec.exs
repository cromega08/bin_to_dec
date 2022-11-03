# <Bin to Dec: A binary to decimal converter.>
# Copyright (C) <2022>  <Cromega>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

defmodule App do
	def run do
		bin = String.trim(IO.gets("\nTo exit, enter without input\n\nBinary: "))
		cond do
			bin === "" -> System.halt()

			String.match?(bin, ~r/[a-zA-Z]{1,}|[2-9]{1,}|[[:blank:]]{1,}/sm) -> IO.puts("\nInvalid input, only 0 and 1 are allowed\n")

			String.length(bin) > 8 -> IO.puts("The max. digits to handle are 8 (ex. 10101010)\n")

			String.length(bin) > 0 and String.length(bin) < 8 ->

				dec = String.to_integer(bin, 2)
		  		IO.puts("Decimal: #{dec}\n")

			true -> IO.puts("\nSomething went wrong\n")
		end
		System.shell("clear")
		App.run()
  	end
end

App.run()
