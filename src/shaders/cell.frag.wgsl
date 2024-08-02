// import {VertexInput, VertexOutput} from './structs.wgsl';
// import {grid, cellState} from './shared.wgsl';

@fragment
fn fragmentMain(input: VertexOutput) -> @location(0) vec4f {
  let redGreenChannels = input.cell / grid;
  // (Red, Green, Blue, Alpha)
  return vec4f(redGreenChannels, 1 - redGreenChannels.x, 1);
}
