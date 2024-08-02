// import {VertexInput, VertexOutput} from './structs.wgsl';
// import {grid, cellState} from './shared.wgsl';

@vertex
fn vertexMain(input: VertexInput) -> VertexOutput  {
  let i = f32(input.instance);

  let cell = vec2f(i % grid.x, floor(i / grid.x));
  let state = f32(cellState[input.instance]);

  let cellOffset = cell / grid * 2;
  let gridPos = (input.pos * state + 1) / grid - 1 + cellOffset;

  // 4-dimensional vector (X, Y, Z, W)
  var output: VertexOutput;
  output.pos = vec4f(gridPos, 0, 1);
  output.cell = cell;

  return output;
}
