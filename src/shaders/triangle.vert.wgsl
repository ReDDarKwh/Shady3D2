struct VertexOutput {
  @builtin(position) position : vec4f,
  @location(0) fragUV : vec2 < f32>,
};

@vertex
fn main(
@builtin(vertex_index) VertexIndex : u32
) -> VertexOutput {
  const pos = array (
  vec2(-1.0, 3),
  vec2(3, -1.0),
  vec2(-1.0, -1.0)
  );

  const uv = array(
  vec2(0.0, 1.0),
  vec2(1.0, 0.0),
  vec2(0.0, 0.0),
  );

  var output : VertexOutput;
  output.position = vec4(pos[VertexIndex], 0.0, 1.0);
  output.fragUV = uv[VertexIndex] * 2.0;
  return output;
}
