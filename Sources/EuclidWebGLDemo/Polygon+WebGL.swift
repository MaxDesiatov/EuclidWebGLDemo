// Copyright 2022 EuclidWebGLDemo contributors.
// SPDX-License-Identifier: BSD-3-Clause

import Euclid
import WebAPIKit

extension Polygon {
  var verticesBuffer: BufferSource {
    var result = ContiguousArray<Float32>()
    result.reserveCapacity(vertices.count * 3)

    for vertex in vertices {
      result.append(Float32(vertex.position.x))
      result.append(Float32(vertex.position.y))
      result.append(Float32(vertex.position.z))
    }

    return BufferSource.arrayBuffer(Float32Array(result).buffer)
  }
}
