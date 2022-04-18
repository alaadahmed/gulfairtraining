defimpl Phoenix.Param, for: GAT.Training.Course do
  def to_param(%{id: id}) do
    "#{id}"
  end
end
