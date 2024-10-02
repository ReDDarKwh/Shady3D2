@fragment
fn main( @location(0) fragUV : vec2<f32>) -> @location(0) vec4f {
  return vec4f(fragUV,0,1) ;
}