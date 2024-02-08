defmodule NameBadge do
  def print(id, name, department) do
    depart = if department, do: String.upcase(department), else: "OWNER"
    if id do
      "[#{id}] - #{name} - #{depart}"
      else
      "#{name} - #{depart}"
      end
   end

end
